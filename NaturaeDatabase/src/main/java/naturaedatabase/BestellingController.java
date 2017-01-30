package naturaedatabase;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BestellingController {
	@Autowired
	private BestellingRepository repoBestelling;
	
	@Autowired
	private OrderlineRepository repoOrderline;
	
	@Autowired
	private KlantRepository repoKlant;
	
	@Autowired
	private ProductRepository repoProduct;
	
	
	//BESTELLING
	@RequestMapping("/invoerBestelling")
	public String klanten(Model model){
		model.addAttribute("alleBestellingen", repoBestelling.findAll());
		model.addAttribute("alleOrderlines", repoOrderline.findAll());
		model.addAttribute("alleKlanten", repoKlant.findAll());
		model.addAttribute("alleProducten", repoProduct.findAll());
		return "invoerBestelling";
	}
	
	@RequestMapping("/overzichtBestelling")
	public String bestellingTotaal(Model model){
		model.addAttribute("alleBestellingen", repoBestelling.findAll());
		return "overzichtBestelling";	
	}	
	
	@RequestMapping(value="/invoerBestelling", method=RequestMethod.POST)
	public String maakBestelling(String opleverDatum, Long klantId, boolean verzonden, boolean betaald, HttpSession session) throws ParseException{	
		DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
		Date date = format.parse(opleverDatum);
		
		Bestelling bestelling = new Bestelling();
		bestelling.setOpleverDatum(date);
		bestelling.setKlant(repoKlant.findOne(klantId));
		bestelling.setVerzonden(verzonden);
		bestelling.setBetaald(betaald);
		repoBestelling.save(bestelling);
		session.setAttribute("bestelling", bestelling);

		return "redirect:invoerOrderline";
	}
	
	@RequestMapping(value="/verwijderBestelling", method=RequestMethod.GET)
	public String verwijderBestelling(Long Id){
		repoBestelling.delete(Id);
		return "redirect:overzichtBestelling";	
	}	
	
	@RequestMapping(value="/getBestelling", method=RequestMethod.GET)
	public @ResponseBody Bestelling getBestelling(Long id){
		Bestelling b = repoBestelling.findOne(id);
		return b;
	}
	
	@RequestMapping(value="/wijzigBestelling", method=RequestMethod.POST)
	public String wijzigBestelling(Long id, boolean betaald, boolean klaar, boolean verzonden, String trackAndTrace){
		Bestelling bestelling = repoBestelling.findOne(id);
		bestelling.setBetaald(betaald);
		bestelling.setKlaar(klaar);
		bestelling.setVerzonden(verzonden);
		bestelling.setTrackAndTrace(trackAndTrace);
		repoBestelling.save(bestelling);
		return "redirect:overzichtBestelling";
	}
	
	
	//ORDERLINES
	@RequestMapping("/invoerOrderline")
	public String bestelling(Model model, HttpSession session){
		model.addAttribute("alleProducten", repoProduct.findAll());	
		session.getAttribute("bestelling");
		return "invoerOrderline";
	}
	
	
	@RequestMapping(value="/maakOrderline", method=RequestMethod.POST)
	public @ResponseBody Orderline maakOrderline(Long productId, int hoeveelheid, Long bestellingId){
		Orderline o = new Orderline();
		o.setProduct(repoProduct.findOne(productId));
		o.setHoeveelheid(hoeveelheid);
		o.setBestelling(repoBestelling.findOne(bestellingId));
		o.setOrderlineInkoopPrijs(o.getProduct().getInkoopPrijs() * hoeveelheid);
		o.setOrderlineVerkoopPrijs(o.getProduct().getVerkoopPrijs() * hoeveelheid);
		repoOrderline.save(o);
		
		//Tel prijzen van product bij elkaar op en stop ze in totalePrijs
		Bestelling b = repoBestelling.findOne(bestellingId);
		double inkoopPrijs = o.getProduct().getInkoopPrijs() * hoeveelheid;
		b.setTotaleInkoopPrijs(b.getTotaleInkoopPrijs() + inkoopPrijs);
		double verkoopPrijs = o.getProduct().getVerkoopPrijs() * hoeveelheid;
		b.setTotaleVerkoopPrijs(b.getTotaleVerkoopPrijs() + verkoopPrijs);
		repoBestelling.save(b);
		return o;
	}
	
	// verwijderd orderlines. Moet nog redirect handling hebben. 
	@RequestMapping(value="/verwijderOrderline", method=RequestMethod.GET)
	public String verwijderOrderline(Long Id){
		repoOrderline.delete(Id);
		// Welke orderlines moeten er meegestuurd worden?
		return "redirect:invoerOrderline";	
	}
	
}
