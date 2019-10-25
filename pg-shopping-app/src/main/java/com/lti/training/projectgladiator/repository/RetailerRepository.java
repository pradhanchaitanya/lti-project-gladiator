package com.lti.training.projectgladiator.repository;

import java.util.List;

import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Retailer;

public interface RetailerRepository extends GenericRepository {

	public Retailer fetchRetailerByEmail(String email) throws NoUserFoundException, MultipleUsersFoundException;
	List<Retailer> fetchAllRetailers() throws NoUserFoundException;
}
