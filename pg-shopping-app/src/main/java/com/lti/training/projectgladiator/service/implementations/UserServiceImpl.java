package com.lti.training.projectgladiator.service.implementations;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lambdaworks.crypto.SCryptUtil;
import com.lti.training.projectgladiator.exceptions.FailedUpsertException;
import com.lti.training.projectgladiator.exceptions.MultipleUsersFoundException;
import com.lti.training.projectgladiator.exceptions.NoUserFoundException;
import com.lti.training.projectgladiator.model.Order;
import com.lti.training.projectgladiator.model.User;
import com.lti.training.projectgladiator.repository.OrderRepository;
import com.lti.training.projectgladiator.repository.UserRepository;
import com.lti.training.projectgladiator.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private MailService mailService;
	
	@Override
	public void addNewUser(User user) throws FailedUpsertException {
		// applying SHA-512 hash
		String hashedPassword = SCryptUtil.scrypt(user.getPassword(), 16, 16, 16);
		user.setPassword(hashedPassword);
		
		try {
			userRepository.upsert(user);
			//mailService.sendWelcomeMail(user);
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

	@Override
	public void updateUser(User user) throws FailedUpsertException, NoUserFoundException, MultipleUsersFoundException {
		try {
			User existingUser = userRepository.fetchUserByEmail(user.getEmail());
			if (existingUser == null) {
				throw new NoUserFoundException();
			}
			userRepository.upsert(user);
		} catch (FailedUpsertException e) {
			throw e;
		} catch (MultipleUsersFoundException e) {
			throw e;
		}
	}

	@Override
	public User validateUser(String email, String password) throws NoUserFoundException {
		User existingUser = fetchUserByEmail(email);
		
		// validate password
		boolean matched = SCryptUtil.check(password, existingUser.getPassword());
		
		if (matched)
			return existingUser;
		
		return null;
	}

	@Override
	public void placeOrder(Order order) throws NoUserFoundException {
		orderRepository.addOrder(order);
	}
	
	@Override
	public Set<Order> fetchOrdersForUser(User user) throws NoUserFoundException {
		return orderRepository.fetchOrdersForUser(user);
	}
}
