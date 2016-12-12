package naturaedatabase;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Klant {
	private Long klantId;
	private int typeKlant; //0 = Winkel, 1 = particulier, 2 = overig
	private String klantNaam;
	private String straat;
	private String huisnummer;
	private String postcode;
	private String stad;
	private String staat;
	private String land;
	private String mail;
	private String telNr;
	private String contactPersoon;
	private String notitie;
	private String vat;
	@JsonIgnore private List<Bestelling> bestellingen = new ArrayList<>();
	
	//Getters en Setters
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getKlantId() {
		return klantId;
	}
	public void setKlantId(Long klantId) {
		this.klantId = klantId;
	}
	public int getTypeKlant() {
		return typeKlant;
	}
	public void setTypeKlant(int typeKlant) {
		this.typeKlant = typeKlant;
	}
	public String getKlantNaam() {
		return klantNaam;
	}
	public void setKlantNaam(String klantNaam) {
		this.klantNaam = klantNaam;
	}
	public String getStraat() {
		return straat;
	}
	public void setStraat(String straat) {
		this.straat = straat;
	}
	public String getHuisnummer() {
		return huisnummer;
	}
	public void setHuisnummer(String huisnummer) {
		this.huisnummer = huisnummer;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getStad() {
		return stad;
	}
	public void setStad(String stad) {
		this.stad = stad;
	}
	public String getStaat() {
		return staat;
	}
	public void setStaat(String staat) {
		this.staat = staat;
	}
	public String getLand() {
		return land;
	}
	public void setLand(String land) {
		this.land = land;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getTelNr() {
		return telNr;
	}
	public void setTelNr(String telNr) {
		this.telNr = telNr;
	}
	public String getNotitie() {
		return notitie;
	}
	public void setNotitie(String notitie) {
		this.notitie = notitie;
	}
	public String getContactPersoon() {
		return contactPersoon;
	}
	public void setContactPersoon(String contactPersoon) {
		this.contactPersoon = contactPersoon;
	}
	@OneToMany(mappedBy = "klant")
	public List<Bestelling> getBestellingen() {
		return bestellingen;
	}
	public void setBestellingen(List<Bestelling> bestellingen) {
		this.bestellingen = bestellingen;
	}
	public String getVat() {
		return vat;
	}
	public void setVat(String vat) {
		this.vat = vat;
	}
	
	
	
}
