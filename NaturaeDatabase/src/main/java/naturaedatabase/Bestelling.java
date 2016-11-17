package naturaedatabase;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bestelling {
	private Long bestellingId;
	private Long klantId;
	private String opleverDatum;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getBestellingId() {
		return bestellingId;
	}
	public void setBestellingId(Long bestellingId) {
		this.bestellingId = bestellingId;
	}
	
	public Long getKlantId() {
		return klantId;
	}
	public void setKlantId(Long klantId) {
		this.klantId = klantId;
	}
	public String getOpleverDatum() {
		return opleverDatum;
	}
	public void setOpleverDatum(String opleverDatum) {
		this.opleverDatum = opleverDatum;
	}
	

	
	
}
