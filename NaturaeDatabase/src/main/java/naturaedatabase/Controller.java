package naturaedatabase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
	
	@Autowired
	private BestellingRepository repoBestelling;
	@Autowired
	private OrderlineRepository repoOrderline;	
	@Autowired
	private KlantRepository repoKlant;	
	@Autowired
	private ProductRepository repoProduct;	
	@Autowired
	private SampleRepository repoSample;	
	@Autowired
	private SampleBestellingRepository repoSampleBestelling;	
	@Autowired
	private SampleOrderlineRepository repoSampleOrderline;
	
	
	@RequestMapping(value="/alleBestellingen", method=RequestMethod.GET)
	public Iterable<Bestelling> getBestellingen(){
		Iterable<Bestelling> bestellingen = repoBestelling.findAll();
		return bestellingen;
	}
	
	@RequestMapping(value="/alleOrderlines", method=RequestMethod.GET)
	public Iterable<Orderline> getOrderlines(){
		Iterable<Orderline> orderlines = repoOrderline.findAll();
		return orderlines;
	}
	
	@RequestMapping(value="/alleKlanten", method=RequestMethod.GET)
	public Iterable<Klant> getKlanten(){
		Iterable<Klant> klanten = repoKlant.findAll();
		return klanten;
	}
	
	@RequestMapping(value="/alleProducten", method=RequestMethod.GET)
	public Iterable<Product> getProducten(){
		Iterable<Product> producten = repoProduct.findAll();
		return producten;
	}
	
	@RequestMapping(value="/alleSamples", method=RequestMethod.GET)
	public Iterable<Sample> getSamples(){
		Iterable<Sample> samples = repoSample.findAll();
		return samples;
	}
	
	@RequestMapping(value="/alleSampleBestellingen", method=RequestMethod.GET)
	public Iterable<SampleBestelling> getSampleBestellingen(){
		Iterable<SampleBestelling> sampleBestellingen = repoSampleBestelling.findAll();
		return sampleBestellingen;
	}
	
	@RequestMapping(value="/alleSampleOrderlines", method=RequestMethod.GET)
	public Iterable<SampleOrderline> getSampleOrderlines(){
		Iterable<SampleOrderline> sampleOrderlines = repoSampleOrderline.findAll();
		return sampleOrderlines;
	}

}
