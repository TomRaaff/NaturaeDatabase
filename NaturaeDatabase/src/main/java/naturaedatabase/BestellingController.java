package naturaedatabase;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

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
	

	@Autowired
	private SampleRepository repoSample;
	
	@Autowired 
	private SampleBestellingRepository repoSampleBestelling;
	
	@Autowired
	private SampleOrderlineRepository repoSampleOrderline;

	private Long aanmaakBestellingId;

	
	@RequestMapping("/invoerBestelling")
	public String klanten(Model model){
		model.addAttribute("alleBestellingen", repoBestelling.findAll());
		model.addAttribute("alleOrderlines", repoOrderline.findAll());
		model.addAttribute("alleKlanten", repoKlant.findAll());
		model.addAttribute("alleProducten", repoProduct.findAll());
		return "invoerBestelling";
	}
	
	@RequestMapping("/invoerOrderline")
	public String bestelling(Model model){
		model.addAttribute("bestelling", repoBestelling.findOne(aanmaakBestellingId));
		model.addAttribute("alleProducten", repoProduct.findAll());			
		return "invoerOrderline";
	}
	
	@RequestMapping("/overzichtBestelling")
	public String bestellingTotaal(Model model){
		model.addAttribute("alleBestellingen", repoBestelling.findAll());
		return "overzichtBestelling";	
	}
	
	
	@RequestMapping(value="/invoerBestelling", method=RequestMethod.POST)
	public String maakBestelling(String opleverDatum, Long klantId, boolean verzonden, boolean betaald) throws ParseException{
		//opleverdatum komt als: MM/dd/yyyy		
		DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
		Date date = format.parse(opleverDatum);
		
		Bestelling bestelling = new Bestelling();
		bestelling.setOpleverDatum(date);
		bestelling.setKlant(repoKlant.findOne(klantId));
		bestelling.setVerzonden(verzonden);
		bestelling.setBetaald(betaald);
		repoBestelling.save(bestelling);
		
		aanmaakBestellingId = bestelling.getBestellingId();		

		return "redirect:invoerOrderline";
	}

	@RequestMapping(value="/invoerOrderline", method=RequestMethod.POST)
	public String maakBestelling(Long productId, int hoeveelheid){
		Orderline orderline = new Orderline();
		orderline.setProduct(repoProduct.findOne(productId));
		orderline.setBestelling(repoBestelling.findOne(aanmaakBestellingId));
		orderline.setHoeveelheid(hoeveelheid);
		repoOrderline.save(orderline);		
		return "redirect:invoerOrderline";
	}
	
	@RequestMapping(value="/verwijderBestelling", method=RequestMethod.GET)
	public String verwijderBestelling(Long Id){
		repoBestelling.delete(Id);
		return "redirect:overzichtBestelling";	
	}	
	
	
	
	//Sample Bestelling

	
	@RequestMapping("/sampleBestelling")
	public String sample(Model model){
		model.addAttribute("alleSamples", repoSample.findAll());
		model.addAttribute("alleKlanten", repoKlant.findAll());
		return "sampleBestelling";
	}
	
	//Resultaat van de sample bestelling form
	@RequestMapping(value="/sampleBestelling", method=RequestMethod.POST)
	public String maakSampleBestelling(Long klantId, Integer contractId, String opleverDatum, 
									   String startDatumContract, String eindDatumContract) throws ParseException{
		DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
		Date dateOplever = format.parse(opleverDatum);
		Date dateStart = format.parse(startDatumContract);
		Date dateEind = format.parse(eindDatumContract);
		
		SampleBestelling sb = new SampleBestelling();
		sb.setKlant(repoKlant.findOne(klantId));
		sb.setContractId(contractId);
		sb.setOpleverDatum(dateOplever);
		sb.setStartDatumContract(dateStart);
		sb.setEindDatumContract(dateEind);
		repoSampleBestelling.save(sb);
		return "redirect:sampleOrderline";
	}
	
	//Get-request sampleOrderline
	@RequestMapping("/sampleOrderline")
	public String sampleOrderline(Model model){
		model.addAttribute("alleSamples", repoSample.findAll());
		model.addAttribute("alleKlanten", repoKlant.findAll());
		return "sampleOrderline";
	}
	
	//Resultaat van de sample Orderline form
		@RequestMapping(value="/sampleOrderline", method=RequestMethod.POST)
		public String maakSampleOrderline(){
			SampleOrderline so = new SampleOrderline();
			repoSampleOrderline.save(so);
			return "redirect:sampleOrderline";
		}

		
		
		

	
}
