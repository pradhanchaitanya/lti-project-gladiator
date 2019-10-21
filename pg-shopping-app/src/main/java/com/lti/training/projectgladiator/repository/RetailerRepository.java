package com.lti.training.projectgladiator.repository;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Retailer;

public interface RetailerRepository {

	public Retailer fetchRetailerByEmail(String email) throws NoUserFoundException, MultipleUsersFoundException;
}
