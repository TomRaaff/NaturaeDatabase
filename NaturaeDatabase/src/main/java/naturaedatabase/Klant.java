package naturaedatabase;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Klant {
	private Long klantId;
	private int typeKlant; //0 = Winkel, 1 = particulier, 2 = overig
	private String klantNaam;
	private String adres;
	private String mail;
	private String telNr;
	private int typeContract;	//0 = geen, 1 = verhuur, 2 = consignatie, 3 = Verkoop, 4 = Trunkshow, 5 = verhuur&consignatie
	private String eindDatumContract;
	private String startDatumContract;
	private String notitie;
	private String contactPersoon;
	private List<Bestelling> bestellingen = new ArrayList<>();
	
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
	public String getAdres() {
		return adres;
	}
	public void setAdres(String adres) {
		this.adres = adres;
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
	public int getTypeContract() {
		return typeContract;
	}
	public void setTypeContract(int typeContract) {
		this.typeContract = typeContract;
	}
	public String getEindDatumContract() {
		return eindDatumContract;
	}
	public void setEindDatumContract(String eindDatumContract) {
		this.eindDatumContract = eindDatumContract;
	}
	public String getStartDatumContract() {
		return startDatumContract;
	}
	public void setStartDatumContract(String startDatumContract) {
		this.startDatumContract = startDatumContract;
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
}
