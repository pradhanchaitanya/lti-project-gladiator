package com.lti.training.projectgladiator.model.jointables;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.Product;

@Entity
@Table(name = "TBL_CART_PRODUCT")
public class CartProduct implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE,
					generator = "CART_PRODUCT_SEQUENCE")
	@SequenceGenerator(sequenceName = "CART_PRODUCT_SEQUENCE", allocationSize = 1, name = "CART_PRODUCT_SEQUENCE")
	@Column(name = "ID")
	private long id;
	
	@Column(name = "QUANTITY")
	private int quantity;
	
	@ManyToOne
	@JoinColumn(name = "PRODUCT_ID")
	// @MapsId ??
	private Product product;
	
	@ManyToOne
	@JoinColumn(name = "CART_ID")
	// @MapsId ??
	private Cart cart;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
}