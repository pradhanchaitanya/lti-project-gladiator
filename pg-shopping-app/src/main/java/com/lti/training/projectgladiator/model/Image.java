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
@Table(name = "TBL_PRODUCT_IMAGE")
public class Image implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, 
					generator = "PRODUCT_IMAGE_SEQUENCE")
	@SequenceGenerator(sequenceName = "PRODUCT_IMAGE_SEQUENCE", allocationSize = 1, name = "PRODUCT_IMAGE_SEQUENCE")
	@Column(name = "ID")
	private long id;
	
	@Column(name = "IMAGE_PATH")
	private String imagePath;
	
	@OneToOne
	@JoinColumn(name = "PRODUCT_ID")
	private Product product;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
}
