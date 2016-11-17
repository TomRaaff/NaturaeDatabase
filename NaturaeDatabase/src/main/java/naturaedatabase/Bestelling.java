package naturaedatabase;

import java.util.ArrayList;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Bestelling {
	private Long bestellingId;
	private Long klantId;
	private String opleverdatum;
	
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
	public String getOpleverdatum() {
		return opleverdatum;
	}
	public void setOpleverdatum(String opleverdatum) {
		this.opleverdatum = opleverdatum;
	}
	

	
	
}
