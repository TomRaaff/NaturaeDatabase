package naturaedatabase;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Sample {
	private Long sampleId;
	private Product product;
	private Klant klant;
	private String datumTerug;

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getSampleId() {
		return sampleId;
	}
	public void setSampleId(Long sampleId) {
		this.sampleId = sampleId;
	}
	@ManyToOne
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	@OneToOne
	public Klant getKlant() {
		return klant;
	}
	public void setKlant(Klant klant) {
		this.klant = klant;
	}
	public String getDatumTerug() {
		return datumTerug;
	}
	public void setDatumTerug(String datumTerug) {
		this.datumTerug = datumTerug;
	}
	
}
