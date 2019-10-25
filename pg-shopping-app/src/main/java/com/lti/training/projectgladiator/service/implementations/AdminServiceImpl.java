package com.lti.training.projectgladiator.service.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lambdaworks.crypto.SCryptUtil;
import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Admin;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.AdminRepository;
import com.lti.training.projectgladiator.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminRepository adminRepository;

	@Override
	public Admin fetchAdminByUsername(String name) throws NoUserFoundException, MultipleUsersFoundException {

		Admin admin = adminRepository.fetchAdminByUsername(name);
		if (admin == null) {
			throw new NoUserFoundException();
		}
		return admin;

	}

	@Override
	public Admin validateAdmin(String username, String password) throws NoUserFoundException {
		Admin existingUser = fetchAdminByUsername(username);

		// validate password
		boolean matched = SCryptUtil.check(password, existingUser.getPassword());

		if (matched)
			return existingUser;

		return null;
	}

}
