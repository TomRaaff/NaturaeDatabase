package naturaedatabase;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Index {
	
	@RequestMapping("/index")
	public String helloWorld(Model model){
		model.addAttribute("naam", "Tom");
		return "index";
	}
	
//	@RequestMapping("/contract")
//	public String consignmentContract(Model model){
//		
//		model.addAttribute("klantNaam", "Bridal");
//		model.addAttribute("startDatumContract", "2 april 3074");
//		model.addAttribute("eindDatumContract", "4 april 3074");
//		model.addAttribute("adres", "Luttemerstraat 6, Luttjebroek");
//		model.addAttribute("contactPersoon", "Paul McCartney");
//		return "consignmentContract";
//	}
}
