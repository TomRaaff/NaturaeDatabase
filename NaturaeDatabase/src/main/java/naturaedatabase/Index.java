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
}
