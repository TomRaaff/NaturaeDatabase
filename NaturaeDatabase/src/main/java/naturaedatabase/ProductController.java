package naturaedatabase;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProductController {

		@Autowired
		private ProductRepository repo;
		
		@RequestMapping("/invoerProduct")
		public String product(Model model){
			model.addAttribute("alleProducten", repo.findAll());
			return "invoerProduct";
		}
		
		@RequestMapping(value="/invoerProduct", method=RequestMethod.POST)
		public String maakProduct(String productNaam, double materiaalKosten, double productPrijs, double inkoopPrijs, double verkoopPrijs, double werkUren, String materialenUrls){
			Product p = new Product();
			p.setProductNaam(productNaam);
			p.setMateriaalKosten(materiaalKosten);
			p.setProductPrijs(productPrijs);
			p.setInkoopPrijs(inkoopPrijs);
			p.setVerkoopPrijs(verkoopPrijs);
			p.setWerkUren(werkUren);
			p.setMaterialenUrls(materialenUrls);
			repo.save(p);
			return "redirect:overzichtProducten";
		}
		
		@RequestMapping("/overzichtProducten")
		public String overzicht(Model model){
			model.addAttribute("alleProducten", repo.findAll());
			return "overzichtProducten";
		}
		
		@RequestMapping(value="/getProduct", method=RequestMethod.GET)
		public @ResponseBody Product getProduct(Long id){
			Product p = repo.findOne(id);
			return p;
		}
		
		@RequestMapping(value="/verwijderProduct", method=RequestMethod.GET)
		public String verwijderProduct(Long Id){
			repo.delete(Id);
			return "redirect:overzichtProducten";	
		}	
		
		@RequestMapping(value="/wijzigProduct", method=RequestMethod.POST)
		public String wijzigBestelling(Long id, HttpServletResponse resp, String naam, double materiaalKosten, double productPrijs, double inkoopPrijs, double verkoopPrijs, double werkUren){
			Product p = repo.findOne(id);
			p.setProductNaam(naam);
			p.setMateriaalKosten(materiaalKosten);
			p.setProductPrijs(productPrijs);
			p.setInkoopPrijs(inkoopPrijs);
			p.setVerkoopPrijs(verkoopPrijs);
			p.setWerkUren(werkUren);
			repo.save(p);
			return "redirect:overzichtProducten";
		}
		

}