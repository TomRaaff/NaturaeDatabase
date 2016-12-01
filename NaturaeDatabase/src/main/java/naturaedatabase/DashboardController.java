package naturaedatabase;

import java.time.LocalDate;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DashboardController {

	@Autowired
	private SampleBestellingRepository repoSampleBestelling;
	
	@Autowired
	private BestellingRepository repoBestelling;
	
	@Autowired
	private ProductRepository repoProduct;
	
	@RequestMapping("/dashboard")
	public String verlopenContract(Model model){
		model.addAttribute("alleBestellingen", repoBestelling);
		model.addAttribute("alleProducten", repoProduct);

		//Query voor bestelling
		Date wekenVoorOpleverdatum = java.sql.Date.valueOf(LocalDate.now().plusWeeks(3));
		model.addAttribute("BestellingenTweeWeek", repoBestelling.findByOpleverDatumBeforeAndKlaar(wekenVoorOpleverdatum, false));
		
		
		//Query voor sampleBestelling
		Date datumVerlopen = java.sql.Date.valueOf(LocalDate.now().minusWeeks(2));
		model.addAttribute("verlopenContracten", repoSampleBestelling.findByEindDatumContractBefore(datumVerlopen));
		
		return "dashboard";
	}

	
//	public void sendMail(){
//		final String username = "NaturaeDesignDatabase@gmail.com";
//		final String password = "NDDatabase";
//
//		Properties props = new Properties();
//		props.put("mail.smtp.auth", "true");
//		props.put("mail.smtp.starttls.enable", "true");
//		props.put("mail.smtp.host", "smtp.gmail.com");
//		props.put("mail.smtp.port", "587");
//
//		Session session = Session.getInstance(props,
//		  new javax.mail.Authenticator() {
//			protected PasswordAuthentication getPasswordAuthentication() {
//				return new PasswordAuthentication(username, password);
//			}
//		  });
//
//		try {
//
//			Message message = new MimeMessage(session);
//			message.setFrom(new InternetAddress("NaturaeDesignDatabase@gmail.com"));
//			message.setRecipients(Message.RecipientType.TO,
//				InternetAddress.parse("NaturaeDesignDatabase@gmail.com"));
//			message.setSubject("Bestellingen");
//			message.setText("Lieve Daniella,"
//				+ "\n\n Je hebt de komende week een aantal bestellingen af te maken."
//				+ "\n Bekijk ze hier: http://localhost:8080/dashboard"
//				+ "\n\n Groetjes,"
//				+ "\n Truus van de administratie"
//					);
//
//			Transport.send(message);
//
//			System.out.println("Done");
//
//		} catch (MessagingException e) {
//			throw new RuntimeException(e);
//		}
//
//	}
	
	@RequestMapping(value="/getDashBestelling", method=RequestMethod.GET)
	public @ResponseBody Bestelling getBestelling(Long id){
		Bestelling bestelling = repoBestelling.findOne(id);
		return bestelling;
	}
	
	@RequestMapping(value="/klaarBestelling", method=RequestMethod.GET)
	public String klaarBestelling(Long Id){
		Bestelling klaar = repoBestelling.findOne(Id);
		klaar.setVerzonden(true);
		repoBestelling.save(klaar);
		return "redirect:dashboard";	
	}	
	
	
}
