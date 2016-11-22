package naturaedatabase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class KlantController {

		@Autowired
		private KlantRepository repo;
		
		@RequestMapping("/invoerKlant")
		public String klanten(Model model){
			model.addAttribute("alleKlanten", repo.findAll());
			return "invoerKlant";
		}
		
		@RequestMapping(value="/invoerKlant", method=RequestMethod.POST)
		public String maakKlant(int typeKlant, String klantNaam, String straat, String huisnummer, String postcode, String stad, 
								String staat, String land, String mail, String telNr, 
								String contactPersoon, String notitie){
			Klant k = new Klant();
			k.setTypeKlant(typeKlant);
			k.setKlantNaam(klantNaam);
			k.setStraat(straat);
			k.setHuisnummer(huisnummer);
			k.setPostcode(postcode);
			k.setStad(stad);
			k.setStaat(staat);
			k.setLand(land);
			k.setMail(mail);
			k.setTelNr(telNr);
			k.setContactPersoon(contactPersoon);
			k.setNotitie(notitie);
			repo.save(k);
			return "redirect:invoerKlant";
		}
}