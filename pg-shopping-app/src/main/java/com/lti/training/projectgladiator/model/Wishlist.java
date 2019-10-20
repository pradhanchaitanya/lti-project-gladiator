package com.lti.training.projectgladiator.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.lti.training.projectgladiator.model.jointables.WishlistProduct;

@Entity
@Table(name = "TBL_WISHLIST")
public class Wishlist {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, 
					generator = "WISHLIST_SEQUENCE")
	@SequenceGenerator(sequenceName = "WISHLIST_SEQUENCE", allocationSize = 1, name = "WISHLIST_SEQUENCE")
	@Column(name = "ID")
	private long id;
	
	@Column(name = "TOTAL_QUANTITY")
	private int totalQuantity;
	
	@OneToOne
	private User user;
	
	/*
	 * Wishlist-Wishlist_Product PK-FK
	 */
	@OneToMany(mappedBy = "wishlist")
	private Set<WishlistProduct> wishlistProducts;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getTotalQuantity() {
		return totalQuantity;
	}

	public void setTotalQuantity(int quantity) {
		this.totalQuantity = quantity;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Set<WishlistProduct> getWishlistProducts() {
		return wishlistProducts;
	}

	public void setWishlistProducts(Set<WishlistProduct> wishlistProducts) {
		this.wishlistProducts = wishlistProducts;
	}
	
}