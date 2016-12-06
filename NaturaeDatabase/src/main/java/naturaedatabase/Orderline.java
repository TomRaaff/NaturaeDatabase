package naturaedatabase;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Orderline {
	private Long orderlineId;
	private Product product;
	private int hoeveelheid;
	@JsonIgnore private Bestelling bestelling;
	private double orderlineInkoopPrijs = 0;
	private double orderlineVerkoopPrijs = 0;
	
	//Getters en setters
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Long getOrderlineId() {
		return orderlineId;
	}
	public void setOrderlineId(Long orderlineId) {
		this.orderlineId = orderlineId;
	}
	
	@ManyToOne
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getHoeveelheid() {
		return hoeveelheid;
	}
	public void setHoeveelheid(int hoeveelheid) {
		this.hoeveelheid = hoeveelheid;
	}
	
	@ManyToOne(cascade=CascadeType.ALL)
	public Bestelling getBestelling() {
		return bestelling;
	}
	public void setBestelling(Bestelling bestelling) {
		this.bestelling = bestelling;
	}
	public double getOrderlineInkoopPrijs() {
		return orderlineInkoopPrijs;
	}
	public void setOrderlineInkoopPrijs(double orderlineInkoopPrijs) {
		this.orderlineInkoopPrijs = orderlineInkoopPrijs;
	}
	public double getOrderlineVerkoopPrijs() {
		return orderlineVerkoopPrijs;
	}
	public void setOrderlineVerkoopPrijs(double orderlineVerkoopPrijs) {
		this.orderlineVerkoopPrijs = orderlineVerkoopPrijs;
	}

	
}
