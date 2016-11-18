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
		public String maakKlant(int typeKlant, String klantNaam, String adres, String mail, String telNr, 
								int typeContract, String startDatumContract, String eindDatumContract,
								String contactPersoon, String notitie){
			Klant k = new Klant();
			k.setTypeKlant(typeKlant);
			k.setKlantNaam(klantNaam);
			k.setAdres(adres);
			k.setMail(mail);
			k.setTelNr(telNr);
			k.setTypeContract(typeContract);
			k.setStartDatumContract(startDatumContract);
			k.setEindDatumContract(eindDatumContract);
			k.setContactPersoon(contactPersoon);
			k.setNotitie(notitie);
			repo.save(k);
			return "redirect:invoerKlant";
		}
}