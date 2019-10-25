package com.lti.training.projectgladiator.repository;

import java.util.Set;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.NoProductFoundException;
import com.lti.training.projectgladiator.model.Product;

public interface GenericRepository {

	public void upsert(Object object)  throws FailedUpsertException;
	public <T> T fetchById(Class<T> clazz, Object primaryKey);
	Set<Product> fetchSearchResult(Product product) throws NoProductFoundException;
}
