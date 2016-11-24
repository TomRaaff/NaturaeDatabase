package naturaedatabase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashboardController {

	@Autowired
	private BestellingRepository repoSampleBestelling;
	
	@RequestMapping("/dashboard")
	public String verlopenContract(Model model){
		Date verlopen.
		
		model.addAttribute("verlopenContracten", repoSampleBestelling.findByDatumVerlopenAfter(Date datumVerlopen));
		return "overzichtBestelling";
	}
	
}
