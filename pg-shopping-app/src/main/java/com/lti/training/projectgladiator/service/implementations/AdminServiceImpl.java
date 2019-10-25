package com.lti.training.projectgladiator.service.implementations;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lambdaworks.crypto.SCryptUtil;
import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Admin;
import com.lti.training.projectgladiator.model.Retailer;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.AdminRepository;
import com.lti.training.projectgladiator.repository.RetailerRepository;
import com.lti.training.projectgladiator.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private RetailerRepository retailerRepository;
	
	@Override
	public Admin fetchAdminByUsername(String name) throws NoUserFoundException, MultipleUsersFoundException {
	
		Admin admin = adminRepository.fetchAdminByUsername(name);
		if (admin == null) {
			throw new NoUserFoundException();
		}
		return admin;
		
	}
	
	@Override
	public Admin validateUser(String username, String password) throws NoUserFoundException {
		Admin validAdmin = fetchAdminByUsername(username);
		
		// validate password
		boolean matched = SCryptUtil.check(password, validAdmin.getPassword());
		
		if (matched)
			return validAdmin;
		
		return null;
	}
	
	@Override
	public List<Retailer> getRetailers() throws NoUserFoundException {
		return retailerRepository.fetchAllRetailers();
	}

}
