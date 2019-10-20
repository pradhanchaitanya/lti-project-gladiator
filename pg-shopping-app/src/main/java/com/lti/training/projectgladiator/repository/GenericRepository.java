package com.lti.training.projectgladiator.repository;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;

public interface GenericRepository {

	public void upsert(Object object)  throws FailedUpsertException;
	public <T> T fetchById(Class<T> clazz, Object primaryKey);
}
