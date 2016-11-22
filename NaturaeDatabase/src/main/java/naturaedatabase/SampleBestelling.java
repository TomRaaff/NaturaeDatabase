package naturaedatabase;

import java.sql.Date;

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
	private Date opleverDatum;
	private Date startDatumContract;
	private Date eindDatumContract;
	
	
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
}
