package naturaedatabase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SampleController {

		@Autowired
		private SampleRepository sampleRepo;
		
		@Autowired
		private ProductRepository productRepo;
		
		@Autowired
		private KlantRepository klantRepo;
		
		@RequestMapping("/invoerSample")
		public String samples(Model model){
			model.addAttribute("alleSamples", sampleRepo.findAll());
			model.addAttribute("alleProducten", productRepo.findAll());
			model.addAttribute("alleKlanten", klantRepo.findAll());
			return "invoerSample";
		}
		
		@RequestMapping(value="/invoerSample", method=RequestMethod.POST)
		public String maakKlant(Long productId){
			Sample s = new Sample();
			s.setProduct(productRepo.findOne(productId));
			
			sampleRepo.save(s);
			return "redirect:invoerSample";
		}
}