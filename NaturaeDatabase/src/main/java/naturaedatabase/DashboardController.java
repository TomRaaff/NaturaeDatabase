package naturaedatabase;

import java.time.LocalDate;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
		Date datumVerlopen = java.sql.Date.valueOf(LocalDate.now().minusWeeks(2));//Verlopen: 2 week verlopen, Date.now is 2 week eerder, dus melding twee week na einddatum contract
		model.addAttribute("verlopenContracten", repoSampleBestelling.findByEindDatumContractBefore(datumVerlopen));
		
		Date deadlineBestelling = java.sql.Date.valueOf(LocalDate.now().minusWeeks(2));//Deadline is 2week voor de orderline, Date.now() + 2 week -> dus melding 2 week voor deadline
		model.addAttribute("BestellingenTweeWeek", repoBestelling.findByOpleverDatumAfter(deadlineBestelling));
		
		return "dashboard";
	}

	
}
