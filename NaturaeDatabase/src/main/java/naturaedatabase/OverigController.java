package naturaedatabase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OverigController {
	
	@Autowired
	private BestellingRepository repoBestelling;
	
	@Autowired
	private ProductRepository repoProduct;
	
	@RequestMapping("/dashboard")
	public String dashboard(Model model){
		model.addAttribute("alleBestellingen", repoBestelling);
		model.addAttribute("alleProducten", repoProduct);
		return "dashboard";
	}
}
