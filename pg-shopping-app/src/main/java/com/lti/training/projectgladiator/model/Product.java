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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.lti.training.projectgladiator.model.jointables.CartProduct;

@Entity
@Table(name = "TBL_PRODUCT")
public class Product implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, 
					generator = "PRODUCT_SEQUENCE")
	@SequenceGenerator(sequenceName = "PRODUCT_SEQUENCE", allocationSize = 1, name = "PRODUCT_SEQUENCE")
	@Column(name = "ID")
	private long id;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "DESCRIPTION")
	private String description;
	
	@Column(name = "PRICE")
	private double price;
	
	@Column(name = "CATEGORY")
	private String category;
	
	@Column(name = "BRAND")
	private String brand;
	
	@Column(name = "QUANTITY")
	private int quantity;
	
	@Column(name = "DISCOUNT")
	private int discount;
	
	@Column(name = "IMAGE_PATH")
	private String imagePath;
	
	/*
	 * Product-Retailer PK-FK
	 */
	@ManyToOne
	@JoinColumn(name = "RETAILER_ID")
	private Retailer retailer;
	
	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	private Set<Review> reviews;
	
	/*
	 * Product-Cart_Product PK-FK
	 */
	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	//@Transient
	private Set<CartProduct> cartProducts;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public Retailer getRetailer() {
		return retailer;
	}

	public void setRetailer(Retailer retailer) {
		this.retailer = retailer;
	}

	public Set<CartProduct> getCartProducts() {
		return cartProducts;
	}

	public void setCartProducts(Set<CartProduct> cartProducts) {
		this.cartProducts = cartProducts;
	}

	public Set<Review> getReviews() {
		return reviews;
	}

	public void setReviews(Set<Review> reviews) {
		this.reviews = reviews;
	}
}