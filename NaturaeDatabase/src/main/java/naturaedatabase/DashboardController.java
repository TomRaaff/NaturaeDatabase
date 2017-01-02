package naturaedatabase;

import java.time.LocalDate;
import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DashboardController {

	@Autowired
	private SampleBestellingRepository repoSampleBestelling;
	
	@Autowired
	private BestellingRepository repoBestelling;
	
	@Autowired
	private ProductRepository repoProduct;
	
	@RequestMapping("/dashboard")
	public String verlopenContract(Model model){
		model.addAttribute("alleBestellingen", repoBestelling);
		model.addAttribute("alleProducten", repoProduct);

		//Query voor bestelling
		Date wekenVoorOpleverdatum = java.sql.Date.valueOf(LocalDate.now().plusWeeks(3));
		model.addAttribute("BestellingenTweeWeek", repoBestelling.findByOpleverDatumBeforeAndKlaar(wekenVoorOpleverdatum, false));
		
		
		//Query voor sampleBestelling
		Date datumVerlopen = java.sql.Date.valueOf(LocalDate.now().minusWeeks(2));
		model.addAttribute("verlopenContracten", repoSampleBestelling.findByEindDatumContractBeforeAndIsTerug(datumVerlopen, false));
		
		return "dashboard";
	}

	
	
	@RequestMapping(value="/getDashBestelling", method=RequestMethod.GET)
	public @ResponseBody Bestelling getBestelling(Long id){
		Bestelling bestelling = repoBestelling.findOne(id);
		return bestelling;
	}
	
	@RequestMapping(value="/klaarBestelling", method=RequestMethod.GET)
	public String klaarBestelling(Long Id){
		Bestelling klaar = repoBestelling.findOne(Id);
		klaar.setVerzonden(true);
		repoBestelling.save(klaar);
		return "redirect:dashboard";	
	}	
	
	
}
