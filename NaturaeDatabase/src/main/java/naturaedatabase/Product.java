package naturaedatabase;

public class Product {
	private String productNaam;
	private double inkoopprijs;
	private double verkoopprijs;
	private double werkUren;
	private boolean isSample;
	private int productId;		//moet later geïnstantieerd worden op basis van de database
	private Object klant;		
	
	
	//constructor
	public Product(){
		
	}
	
	
	
	//getters en setters
	public boolean isSample() {
		return isSample;
	}
/*
	public String getNaam() {
		return naam;
	}

	public void setNaam(String naam) {
		this.naam = naam;
	}
*/
	public double getInkoopprijs() {
		return inkoopprijs;
	}

	public void setInkoopprijs(double inkoopprijs) {
		this.inkoopprijs = inkoopprijs;
	}

	public double getVerkoopprijs() {
		return verkoopprijs;
	}

	public void setVerkoopprijs(double verkoopprijs) {
		this.verkoopprijs = verkoopprijs;
	}

	public double getWerkUren() {
		return werkUren;
	}

	public void setWerkUren(double werkUren) {
		this.werkUren = werkUren;
	}

	public void setSample(boolean isSample) {
		this.isSample = isSample;
	}

	public int getProductId() {
		return productId;
	}

	public Object getKlant() {
		return klant;
	}

	public void setKlant(Object klant) {
		this.klant = klant;
	}

	
}
