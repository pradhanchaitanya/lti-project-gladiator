package com.lti.training.projectgladiator.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.lti.training.projectgladiator.model.jointables.CartProduct;

@Entity
@Table(name = "TBL_CART")
public class Cart implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, 
					generator = "CART_SEQUENCE")
	@SequenceGenerator(sequenceName = "CART_SEQUENCE", allocationSize = 1, name = "CART_SEQUENCE")
	@Column(name = "ID")
	private long id;
	
	@Column(name = "TOTAL_QUANTITY")
	private int totalQuantity;
	
	@Column(name = "TOTAL_PRICE")
	private double totalPrice;
	
	/*
	 * Cart-User PK-FK
	 */
	@OneToOne
	@JoinColumn(name = "USER_ID")
	private User user;
	
	/*
	 * Cart-Cart_Product PK-FK
	 */
	@OneToMany(mappedBy = "cart", cascade = CascadeType.ALL)
	//@Transient
	private Set<CartProduct> cartProducts;
	
	@OneToOne(mappedBy = "cart", cascade = CascadeType.ALL)
	private Order order;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getTotalQuantity() {
		return totalQuantity;
	}

	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Set<CartProduct> getCartProducts() {
		return cartProducts;
	}

	public void setCartProducts(Set<CartProduct> cartProducts) {
		this.cartProducts = cartProducts;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
}