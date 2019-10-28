package com.lti.training.projectgladiator.model;

import java.io.Serializable;

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
@Table(name = "TBL_PRODUCT_DISCOUNT")
public class Discount implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, 
					generator = "PRODUCT_DISCOUNT_SEQUENCE")
	@SequenceGenerator(sequenceName = "PRODUCT_DISCOUNT_SEQUENCE", allocationSize = 1, name = "PRODUCT_DISCOUNT_SEQUENCE")
	@Column(name = "ID")
	private long id;
	
	@Column(name = "DISCOUNT_PERCENT")
	private double discountPercent;
	
	@OneToOne
	@JoinColumn(name = "PRODUCT_ID")
	private Product product;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public double getDiscountPercent() {
		return discountPercent;
	}

	public void setDiscountPercent(double discountPercent) {
		this.discountPercent = discountPercent;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
}
