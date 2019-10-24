package com.lti.training.projectgladiator.service.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lambdaworks.crypto.SCryptUtil;
import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.repository.RetailerRepository;
import com.lti.training.projectgladiator.service.RetailerService;

@Service
public class RetailerServiceImpl implements RetailerService {

	@Autowired
	private RetailerRepository retailerRepository;

	@Override
	public void addNewRetailer(Retailer retailer) {
		// applying SHA-512 hash
		String hashedPassword = SCryptUtil.scrypt(retailer.getPassword(), 16, 16, 16);
		retailer.setPassword(hashedPassword);

		try {
			retailerRepository.upsert(retailer);
			//mailService.sendWelcomeMail(retailer);
		} catch (FailedUpsertException e) {
			throw e;
		}
	}

	@Override
	public Retailer fetchRetailerById(long retailerId) {
		Retailer retailer = retailerRepository.fetchById(Retailer.class, retailerId);
		if (retailer == null) {
			throw new NoUserFoundException();
		}

		return retailer;
	}

}
