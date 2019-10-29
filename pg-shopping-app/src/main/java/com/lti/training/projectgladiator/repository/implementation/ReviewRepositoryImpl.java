package com.lti.training.projectgladiator.repository.implementation;

import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.NoProductFoundException;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.Review;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.ReviewRepository;

@Repository
@Transactional
public class ReviewRepositoryImpl extends GenericRepositoryImpl implements ReviewRepository {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	@Transactional
	public void addReview(Review review, User user, Product product) {
		review.setUser(user);
		review.setProduct(product);
		upsert(review);
	}

	@Override
	public Set<Review> getReviewsForUser(User user) {
		long userId = user.getId();
		String jpql = "select r from Review r where r.user.id = :userId";
		Query query = entityManager.createQuery(jpql);
		
		
		
		return null;
	}

	@Override
	public Set<Review> getReviewsForProduct(Product product) {
		// TODO Auto-generated method stub
		return null;
	}

}
