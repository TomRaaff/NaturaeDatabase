package naturaedatabase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		
		@RequestMapping(value="/verwijderProduct", method=RequestMethod.GET)
		public String verwijderProduct(Long Id){
			repo.delete(Id);
			return "redirect:overzichtProducten";	
		}	

		/*
		private String productNaam;
		private double inkoopPrijs;
		private double verkoopPrijs;
		private double werkUren;
		private int hoeVaakVerkocht;
		private String materialenUrls;
		*/
}