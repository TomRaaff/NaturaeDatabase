package naturaedatabase;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class SampleBestelling {
	private Long SampleBestellingId;
	private Klant klant;
	private int contractId;
	private String opleverDatum;
	private String startDatumContract;
	private String eindDatumContract;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getSampleBestellingId() {
		return SampleBestellingId;
	}
	public void setSampleBestellingId(Long sampleBestellingId) {
		SampleBestellingId = sampleBestellingId;
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
	public String getOpleverDatum() {
		return opleverDatum;
	}
	public void setOpleverDatum(String opleverDatum) {
		this.opleverDatum = opleverDatum;
	}
	public String getStartDatumContract() {
		return startDatumContract;
	}
	public void setStartDatumContract(String startDatumContract) {
		this.startDatumContract = startDatumContract;
	}
	public String getEindDatumContract() {
		return eindDatumContract;
	}
	public void setEindDatumContract(String eindDatumContract) {
		this.eindDatumContract = eindDatumContract;
	}
}
