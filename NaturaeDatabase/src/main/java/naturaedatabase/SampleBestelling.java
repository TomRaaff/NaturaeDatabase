package naturaedatabase;

import java.util.Date;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class SampleBestelling {
	private Long SampleBestellingId;
	private Klant klant;
	private int contractId; //0 = geen, 1 = verhuur, 2 = consignatie, 3 = Verkoop, 4 = Trunkshow, 5 = verhuur&consignatie
	private Date opleverDatum;
	private Date startDatumContract;
	private Date eindDatumContract;
	private Set<SampleOrderline> sampleOrderlines;
	private Boolean isTerug;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getSampleBestellingId() {
		return SampleBestellingId;
	}
	public void setSampleBestellingId(Long sampleBestellingId) {
		this.SampleBestellingId = sampleBestellingId;
	}
	@OneToOne
	public Klant getKlant() {
		return klant;
	}
	public void setKlant(Klant klant) {
		this.klant = klant;
	}
	public int getContractId() {
		return contractId;
	}
	public void setContractId(int contractId) {
		this.contractId = contractId;
	}
	public Date getOpleverDatum() {
		return opleverDatum;
	}
	public void setOpleverDatum(Date opleverDatum) {
		this.opleverDatum = opleverDatum;
	}
	public Date getStartDatumContract() {
		return startDatumContract;
	}
	public void setStartDatumContract(Date startDatumContract) {
		this.startDatumContract = startDatumContract;
	}
	public Date getEindDatumContract() {
		return eindDatumContract;
	}
	public void setEindDatumContract(Date eindDatumContract) {
		this.eindDatumContract = eindDatumContract;
	}
	@OneToMany(orphanRemoval=true, mappedBy="sampleBestelling")
	public Set<SampleOrderline> getSampleOrderlines() {
		return sampleOrderlines;
	}
	public void setSampleOrderlines(Set<SampleOrderline> sampleOrderlines) {
		this.sampleOrderlines = sampleOrderlines;
	}
	public Boolean getIsTerug() {
		return isTerug;
	}
	public void setIsTerug(Boolean isTerug) {
		this.isTerug = isTerug;
	}
	
}
