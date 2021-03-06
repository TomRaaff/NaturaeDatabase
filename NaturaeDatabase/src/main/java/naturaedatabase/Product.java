package naturaedatabase;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	private Long productId;
	private String productNaam;
	private double materiaalKosten;
	private double productPrijs;
	private double inkoopPrijs;
	private double verkoopPrijs;
	private double werkUren;
	private String materialenUrls;
	
	
	//getters en setters
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public String getProductNaam() {
		return productNaam;
	}
	public void setProductNaam(String productNaam) {
		this.productNaam = productNaam;
	}
	public double getMateriaalKosten() {
		return materiaalKosten;
	}
	public void setMateriaalKosten(double materiaalKosten) {
		this.materiaalKosten = materiaalKosten;
	}
	public double getProductPrijs() {
		return productPrijs;
	}
	public void setProductPrijs(double productPrijs) {
		this.productPrijs = productPrijs;
	}
	public double getInkoopPrijs() {
		return inkoopPrijs;
	}
	public void setInkoopPrijs(double inkoopPrijs) {
		this.inkoopPrijs = inkoopPrijs;
	}
	public double getVerkoopPrijs() {
		return verkoopPrijs;
	}
	public void setVerkoopPrijs(double verkoopPrijs) {
		this.verkoopPrijs = verkoopPrijs;
	}
	public double getWerkUren() {
		return werkUren;
	}
	public void setWerkUren(double werkUren) {
		this.werkUren = werkUren;
	}
	public String getMaterialenUrls() {
		return materialenUrls;
	}
	public void setMaterialenUrls(String materialenUrls) {
		this.materialenUrls = materialenUrls;
	}

	

	
}
