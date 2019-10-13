package com.lti.training.projectgladiator.entity.jointables;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.lti.training.projectgladiator.entity.Product;
import com.lti.training.projectgladiator.entity.Wishlist;

@Entity
@Table(name = "TBL_WISHLIST_PRODUCT")
public class WishlistProduct {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE,
					generator = "WISHLIST_PRODUCT_SEQUENCE")
	@Column(name = "ID")
	private long id;
	
	@Column(name = "ID")
	private int quantity;
	
	@ManyToOne
	@JoinColumn(name = "PRODUCT_ID")
	// @MapsId ??
	private Product product;
	
	@ManyToOne
	@JoinColumn(name = "WISHLIST_ID")
	// @MapsId ??
	private Wishlist wishlist;

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

	public Wishlist getWishlist() {
		return wishlist;
	}

	public void setWishlist(Wishlist wishlist) {
		this.wishlist = wishlist;
	}
	
}
