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
	
	@RequestMapping("/dashboard")
	public String verlopenContract(Model model){
		Date datumVerlopen = java.sql.Date.valueOf(LocalDate.now().minusWeeks(2));//Verlopen: 2 week verlopen
		model.addAttribute("verlopenContracten", repoSampleBestelling.findByEindDatumContractBefore(datumVerlopen));
		return "dashboard";
	}
	
}
