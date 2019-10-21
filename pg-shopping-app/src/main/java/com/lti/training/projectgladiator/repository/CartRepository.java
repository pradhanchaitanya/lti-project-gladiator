package com.lti.training.projectgladiator.repository;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.MultipleCartsFoundException;
import com.lti.training.projectgladiator.exceptions.NoCartFoundException;
import com.lti.training.projectgladiator.model.Cart;
import com.lti.training.projectgladiator.model.User;

public interface CartRepository extends GenericRepository {

	public void addCartForUser(Cart cart) throws FailedUpsertException;
	public void updateCartForUser(Cart cart) throws FailedUpsertException;
	public Cart fetchCartForUser(User user) throws NoCartFoundException, MultipleCartsFoundException;
}
