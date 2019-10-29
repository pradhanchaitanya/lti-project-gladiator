package com.lti.training.projectgladiator.service.implementations;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lambdaworks.crypto.SCryptUtil;
import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Product;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.RetailerRepository;
import com.lti.training.projectgladiator.service.ProductService;
import com.lti.training.projectgladiator.service.RetailerService;

@Service
public class RetailerServiceImpl implements RetailerService {

	@Autowired
	private RetailerRepository retailerRepository;
	
	@Autowired
	private ProductService productService;

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
	
	@Override
	public Retailer fetchRetailerByEmail(String email) throws NoUserFoundException, MultipleUsersFoundException {
		Retailer retailer = retailerRepository.fetchRetailerByEmail(email);
		if (retailer == null) {
			throw new NoUserFoundException();
		}
		
		return retailer;
	}
	
	@Override
	public List<Retailer> fetchAllRetailers() throws NoUserFoundException {
		return retailerRepository.fetchAllRetailers();
	}
	
	@Override
	public Retailer validateRetailer(String email, String password) throws NoUserFoundException {
		Retailer existingRetailer = fetchRetailerByEmail(email);
		
		// validate password
		boolean matched = SCryptUtil.check(password, existingRetailer.getPassword());
		
		if (matched)
			return existingRetailer;
		
		return null;
	}
	
	@Override
	public void verifyRetailer(long retailerId) throws NoUserFoundException {
		Retailer retailer = fetchRetailerById(retailerId);
		retailer.setApproved(true);
		retailerRepository.upsert(retailer);
	}
	
	@Override
	public void removeRetailer(long retailerId) throws NoUserFoundException {
		Retailer retailer = fetchRetailerById(retailerId);
		retailerRepository.removeRetailer(retailer);
	}

	@Override
	public void addNewProduct(Product product) {
		productService.addNewProduct(product);
	}
	
	@Override
	public Set<Product> fetchProductsForRetailer(Retailer retailer) {
		return productService.fetchProductsForRetailer(retailer);
	}
}
