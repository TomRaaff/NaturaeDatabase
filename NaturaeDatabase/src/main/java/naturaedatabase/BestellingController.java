package naturaedatabase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	
	@RequestMapping("/invoerBestelling")
	public String klanten(Model model){
		model.addAttribute("alleBestellingen", repoBestelling.findAll());
		model.addAttribute("alleOrderlines", repoOrderline.findAll());
		model.addAttribute("alleKlanten", repoKlant.findAll());
		model.addAttribute("alleProducten", repoProduct.findAll());
		return "invoerBestelling";
	}
	
	@RequestMapping(value="/invoerBestelling", method=RequestMethod.POST)
	public String maakBestelling(String opleverDatum, Long klantId, boolean verzonden, boolean betaald){
		Bestelling bestelling = new Bestelling();
		bestelling.setOpleverDatum(opleverDatum);
		bestelling.setKlant(repoKlant.findOne(klantId));
		bestelling.setVerzonden(verzonden);
		bestelling.setBetaald(betaald);
		repoBestelling.save(bestelling);
		
		return "redirect:invoerBestelling";
	}
	
	@RequestMapping(value="/invoerOrderline", method=RequestMethod.POST)
	public String maakBestelling(Long productId, int hoeveelheid, long bestellingId){
		Orderline orderline = new Orderline();
		orderline.setProduct(repoProduct.findOne(productId));
		orderline.setBestelling(repoBestelling.findOne(bestellingId));
		orderline.setHoeveelheid(hoeveelheid);
		repoOrderline.save(orderline);
		
		return "redirect:invoerBestelling";
	}
	
	
}
