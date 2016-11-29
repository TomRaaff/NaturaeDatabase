package naturaedatabase;

import java.util.Date;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;



@Entity
public class Bestelling {
	private Long bestellingId;
	private Klant klant;
	private Date opleverDatum;
	private boolean verzonden;
	private boolean klaar;
	private boolean betaald;
	private String trackAndTrace;
	private Set<Orderline> orderlines;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getBestellingId() {
		return bestellingId;
	}
	public void setBestellingId(Long bestellingId) {
		this.bestellingId = bestellingId;
	}
	
	public Date getOpleverDatum() {
		return opleverDatum;
	}
	public Date setOpleverDatum(Date opleverDatum) {
		return this.opleverDatum = opleverDatum;
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
	@OneToMany(orphanRemoval=true, mappedBy="bestelling")
	public Set<Orderline> getOrderlines() {
		return orderlines;
	}
	public void setOrderlines(Set<Orderline> orderlines) {
		this.orderlines = orderlines;
	}
	public boolean isKlaar() {
		return klaar;
	}
	public void setKlaar(boolean klaar) {
		this.klaar = klaar;
	}
	public String getTrackAndTrace() {
		return trackAndTrace;
	}
	public void setTrackAndTrace(String trackAndTrace) {
		this.trackAndTrace = trackAndTrace;
	}
	
}
