package naturaedatabase;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Orderline {
	private Long orderlineId;
	private Product product;
	private int hoeveelheid;
	private Bestelling bestelling;
	
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
	
	@ManyToOne
	public Bestelling getBestelling() {
		return bestelling;
	}
	public void setBestelling(Bestelling bestelling) {
		this.bestelling = bestelling;
	}
}
