package naturaedatabase;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Bestelling {
	private Long bestellingId;
	private Klant klant;
	private String opleverDatum;
	private boolean verzonden;
	private boolean betaald;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getBestellingId() {
		return bestellingId;
	}
	public void setBestellingId(Long bestellingId) {
		this.bestellingId = bestellingId;
	}
	
	public String getOpleverDatum() {
		return opleverDatum;
	}
	public void setOpleverDatum(String opleverDatum) {
		this.opleverDatum = opleverDatum;
	}
	@ManyToOne
	public Klant getKlant() {
		return klant;
	}
	public void setKlant(Klant klant) {
		this.klant = klant;
	}
	public boolean isVerzonden() {
		return verzonden;
	}
	public void setVerzonden(boolean verzonden) {
		this.verzonden = verzonden;
	}
	public boolean isBetaald() {
		return betaald;
	}
	public void setBetaald(boolean betaald) {
		this.betaald = betaald;
	}
	
}
