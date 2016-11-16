package naturaedatabase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KlantController {

		@Autowired
		private KlantRepository repo;
		
		@RequestMapping("/")
		public String maakKlant(Model model){
			
			return "invoerKlant";
		}
}
