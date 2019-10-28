package com.lti.training.projectgladiator.model;

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

@Entity
@Table(name = "TBL_REVIEW")
public class Review implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, 
					generator = "REVIEW_SEQUENCE")
	@SequenceGenerator(sequenceName = "REVIEW_SEQUENCE", allocationSize = 1, name = "REVIEW_SEQUENCE")
	@Column(name = "ID")
	private long id;
	
	@Column(name = "REVIEW")
	private String review;
	
	@ManyToOne
	@JoinColumn(name = "USER_ID")
	private User user;
	
	@ManyToOne
	@JoinColumn(name = "PRODUCT_ID")
	private Product product;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
}
