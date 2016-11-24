package naturaedatabase;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class SampleOrderline {
	private Long sampleOrderlineId;
	private Sample sample;
	private SampleBestelling sampleBestelling;
	
	//getters en setters
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getSampleOrderlineId() {
		return sampleOrderlineId;
	}
	public void setSampleOrderlineId(Long sampleOrderlineId) {
		this.sampleOrderlineId = sampleOrderlineId;
	}
	
	@ManyToOne
	public Sample getSample() {
		return sample;
	}
	public void setSample(Sample sample) {
		this.sample = sample;
	}
	
	@ManyToOne(cascade=CascadeType.ALL)
	public SampleBestelling getSampleBestelling() {
		return sampleBestelling;
	}
	public void setSampleBestelling(SampleBestelling sampleBestelling) {
		this.sampleBestelling = sampleBestelling;
	}
}
