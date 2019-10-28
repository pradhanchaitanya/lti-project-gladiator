package com.lti.training.projectgladiator.repository;

import java.util.Set;

import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.Review;
import com.lti.training.projectgladiator.model.User;

public interface ReviewRepository extends GenericRepository {

	void addReview(Review review, User user, Product product);
	Set<Review> getReviewsForUser(User user);
	Set<Review> getReviewsForProduct(Product product);
}
