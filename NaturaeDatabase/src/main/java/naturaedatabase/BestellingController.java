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
	
	@RequestMapping("/invoerBestelling")
	public String klanten(Model model){
		model.addAttribute("alleBestellingen", repoBestelling.findAll());
		model.addAttribute("alleOrderlines", repoOrderline.findAll());
		return "invoerBestelling";
	}
	
	@RequestMapping(value="/invoerBestelling", method=RequestMethod.POST)
	public String maakBestelling(String opleverDatum){
		Bestelling b = new Bestelling();
		b.setOpleverDatum(opleverDatum);
		repoBestelling.save(b);
		
		Orderline o = new Orderline();
		repoOrderline.save(o);
		
		return "redirect:invoerBestelling";
	}
}
