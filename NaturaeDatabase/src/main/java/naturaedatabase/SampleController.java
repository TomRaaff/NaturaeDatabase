package naturaedatabase;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SampleController {

		@Autowired
		private SampleRepository repoSample;
		
		@Autowired
		private ProductRepository repoProduct;
		
		@Autowired
		private KlantRepository repoKlant;
		
		@Autowired 
		private SampleBestellingRepository repoSampleBestelling;
		
		@Autowired
		private SampleOrderlineRepository repoSampleOrderline;
		
		private Long aanmaakSampleBestellingId; //Deze variable wordt gebruikt om de laastaangemaakte bestellingId mee te geven aan de 

		@RequestMapping("/invoerSample")
		public String samples(Model model){
			model.addAttribute("alleSamples", repoSample.findAll());
			model.addAttribute("alleProducten", repoProduct.findAll());
			model.addAttribute("alleKlanten", repoKlant.findAll());
			return "invoerSample";
		}
		
		@RequestMapping(value="/invoerSample", method=RequestMethod.POST)
		public String maakKlant(Long productId){
			Sample sample = new Sample();
			sample.setProduct(repoProduct.findOne(productId));
			
			repoSample.save(sample);
			return "redirect:invoerSample";
		}

		@RequestMapping("/sampleBestelling")
		public String sample(Model model){
			model.addAttribute("alleSamples", repoSample.findAll());
			model.addAttribute("alleKlanten", repoKlant.findAll());
			return "sampleBestelling";
		}

		@RequestMapping(value="/sampleBestelling", method=RequestMethod.POST)
		public String maakSampleBestelling(Long klantId, Integer contractId, String opleverDatum, 
										   String startDatumContract, String eindDatumContract) throws ParseException{
			DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.ENGLISH);
			Date dateOplever = format.parse(opleverDatum);
			Date dateStart = format.parse(startDatumContract);
			Date dateEind = format.parse(eindDatumContract);
			
			SampleBestelling sb = new SampleBestelling();
			sb.setKlant(repoKlant.findOne(klantId));
			sb.setContractId(contractId);
			sb.setOpleverDatum(dateOplever);
			sb.setStartDatumContract(dateStart);
			sb.setEindDatumContract(dateEind);
			repoSampleBestelling.save(sb);
			
			aanmaakSampleBestellingId = sb.getSampleBestellingId();	
			
			return "redirect:sampleOrderline";
		}
		
		//Get-request sampleOrderline
		@RequestMapping("/sampleOrderline")
		public String sampleOrderline(Model model){
			model.addAttribute("alleSamples", repoSample.findAll());
			model.addAttribute("alleKlanten", repoKlant.findAll());
			model.addAttribute("alleProducten", repoProduct.findAll());		
			model.addAttribute("sampleBestelling", repoSampleBestelling.findOne(aanmaakSampleBestellingId));
			return "sampleOrderline";
		}
		
		//Resultaat van de sample Orderline form
			@RequestMapping(value="/sampleOrderline", method=RequestMethod.POST)
			public String maakSampleOrderline(Long sampleId){
				SampleOrderline so = new SampleOrderline();
				so.setSample(repoSample.findOne(sampleId));
				so.setSampleBestelling(repoSampleBestelling.findOne(aanmaakSampleBestellingId));
				repoSampleOrderline.save(so);
				return "redirect:sampleOrderline";
			}
			
			@RequestMapping("/overzichtSampleBestelling")
			public String sampleBestellingTotaal(Model model){	
				model.addAttribute("alleSampleBestellingen", repoSampleBestelling.findAll());
				return "overzichtSampleBestelling";	
			}
			
			@RequestMapping(value="/verwijderSampleBestelling", method=RequestMethod.GET)
			public String verwijderSampleBestelling(Long Id){
				repoSampleBestelling.delete(Id);
				return "redirect:overzichtSampleBestelling";	
			}
			
			@RequestMapping(value="/getSampleBestelling", method=RequestMethod.GET)
			public @ResponseBody SampleBestelling getSampleBestelling(Long id){
				SampleBestelling sb = repoSampleBestelling.findOne(id);
				return sb;
			}
			
			// wordt aan gewerkt
			//Should return:  List<sampleBestelling> WHERE (opleverdatum < nu) && (isTerug == false)
			@RequestMapping(value="/getSampleBestellingKlant", method=RequestMethod.GET)
			public @ResponseBody SampleBestelling getSampleBestellingKlant(Long id){ //is id van sample
				SampleBestelling sb = repoSampleBestelling.findOne(1L);  //SampleBestelling id=1  moet naar Daniella verwijzen.
				Date datumNu = java.sql.Date.valueOf(LocalDate.now());
				List<SampleBestelling> sbLijst = repoSampleBestelling.findByOpleverDatumBeforeAndIsTerug(datumNu, false);
				
				for (SampleBestelling sBestelling : sbLijst){
					for (SampleOrderline so : sBestelling.getSampleOrderlines()){
						Sample sample = so.getSample();
						if (sample.getSampleId() == id){
							sb = repoSampleBestelling.findOne(sBestelling.getSampleBestellingId());
							break;
						}
					}
				}
				return sb;
			}
					
			
			@RequestMapping(value="/wijzigSampleBestelling", method=RequestMethod.POST)
			public String wijzigSampleBestelling(Long id, int contractId, boolean isTerug){
				SampleBestelling sb = repoSampleBestelling.findOne(id);
				sb.setContractId(contractId);
				sb.setIsTerug(isTerug);
				repoSampleBestelling.save(sb);
				return "redirect:dashboard";
			}
			
}