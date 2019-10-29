package com.lti.training.projectgladiator.model;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "TBL_ORDER")
public class Order implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, 
					generator = "ORDER_SEQUENCE")
	@SequenceGenerator(sequenceName = "ORDER_SEQUENCE", allocationSize = 1, name = "ORDER_SEQUENCE")
	@Column(name = "ID")
	private long id;
	
	@Column(name = "ORDERED_ON")
	private LocalDate orderedOn;
	
	@Column(name = "TOTAL_PRICE")
	private double totalPrice;
	
	@Column(name = "MODE_OF_PAYMENT")
	private String modeOfPayment = "Cash on Delivery";
	
	@OneToOne
	@JoinColumn(name = "CART_ID")
	private Cart cart;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public LocalDate getOrderedOn() {
		return orderedOn;
	}

	public void setOrderedOn(LocalDate orderedOn) {
		this.orderedOn = orderedOn;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getModeOfPayment() {
		return modeOfPayment;
	}

	public void setModeOfPayment(String modeOfPayment) {
		this.modeOfPayment = modeOfPayment;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}
}
