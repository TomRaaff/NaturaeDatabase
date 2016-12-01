package naturaedatabase;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Sample {
	private Long sampleId;
	private Product product;
	private Set<SampleBestelling>sampleBestellingen;

	
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
	@OneToMany
	public Set<SampleBestelling> getSampleBestellingen() {
		return sampleBestellingen;
	}
	public void setSampleBestellingen(Set<SampleBestelling> sampleBestellingen) {
		this.sampleBestellingen = sampleBestellingen;
	}


	
}
