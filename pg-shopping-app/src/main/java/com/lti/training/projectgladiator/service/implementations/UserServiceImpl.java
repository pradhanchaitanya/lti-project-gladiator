package com.lti.training.projectgladiator.service.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.UserRepository;
import com.lti.training.projectgladiator.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public void addNewUser(User user) throws FailedUpsertException {
		try {
			userRepository.upsert(user);
		} catch (FailedUpsertException e) {
			throw e;
		}
	}

	@Override
	public User fetchUserById(long userId) throws NoUserFoundException, MultipleUsersFoundException {
		User user = userRepository.fetchById(User.class, userId);
		if (user == null) {
			throw new NoUserFoundException();
		}
		
		return user;
	}

	@Override
	public User fetchUserByEmail(String email) throws NoUserFoundException, MultipleUsersFoundException {
		User user = userRepository.fetchUserByEmail(email);
		if (user == null) {
			throw new NoUserFoundException();
		}
		
		return user;
	}

}
