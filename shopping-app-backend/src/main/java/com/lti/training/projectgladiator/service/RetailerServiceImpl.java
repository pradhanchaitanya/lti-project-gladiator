package com.lti.training.projectgladiator.service;

import com.lti.training.projectgladiator.dao.GenericDao;
import com.lti.training.projectgladiator.entity.Retailer;

public class RetailerServiceImpl implements RetailerService {

	public void addNewRetailer(Retailer retailer) {
		GenericDao dao = new GenericDao();
		dao.upsert(retailer);
	}

	public Retailer fetchRetailerById(long retailerId) {
		GenericDao dao = new GenericDao();
		Retailer retailer = (Retailer) dao.fetchById(Retailer.class, retailerId);
		return retailer;
	}

}
