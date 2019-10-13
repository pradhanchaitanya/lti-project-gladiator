package com.lti.training.projectgladiator.service;

import com.lti.training.projectgladiator.entity.Retailer;

public interface RetailerService {

	void addNewRetailer(Retailer retailer);
	Retailer fetchRetailerById(long retailerId);
}
