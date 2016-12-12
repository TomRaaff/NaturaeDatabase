package naturaedatabase;

import java.time.Instant;
import java.time.LocalDate;
import java.time.Month;
import java.time.ZoneId;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FinancienController {
	@Autowired
	private BestellingRepository repoBestelling;
	
	@Autowired
	private OrderlineRepository repoOrderline;
	
	@Autowired
	private KlantRepository repoKlant;
	
	@Autowired
	private ProductRepository repoProduct;
	
	@RequestMapping("/overzichtFinancien")
	public String financien(Model model){
		LocalDate datumNu = LocalDate.now(ZoneId.of("Europe/Paris"));
		Month maandNu = datumNu.getMonth();
		LocalDate beginMaandLD = LocalDate.of(datumNu.getYear(), maandNu, 01);
		LocalDate eindeMaandLD = LocalDate.of(2017, maandNu.plus(1), 01);
		Instant instantEindeMaand = eindeMaandLD.atStartOfDay().atZone(ZoneId.systemDefault()).toInstant();
		Instant instantBeginMaand = beginMaandLD.atStartOfDay().atZone(ZoneId.systemDefault()).toInstant();
		Date eindeMaand = Date.from(instantEindeMaand);
		Date beginMaand = Date.from(instantBeginMaand);
		System.out.println(eindeMaandLD);
		model.addAttribute("bestellingenDezeMaand", repoBestelling.findByOpleverDatumBeforeAndOpleverDatumAfter(eindeMaand, beginMaand));
		
		model.addAttribute("alleBestellingen", repoBestelling.findAll());
		model.addAttribute("alleOrderlines", repoOrderline.findAll());
		model.addAttribute("alleKlanten", repoKlant.findAll());
		model.addAttribute("alleProducten", repoProduct.findAll());
		return "overzichtFinancien";
	}
	
}
