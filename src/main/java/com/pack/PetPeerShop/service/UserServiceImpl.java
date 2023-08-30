package com.pack.PetPeerShop.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.pack.PetPeerShop.Repositary.UserRepository;
import com.pack.PetPeerShop.model.User;

@Service
public class UserServiceImpl implements UserService{
@Autowired
UserRepository userRepository;
@Autowired
private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public void save(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		userRepository.save(user);
		
	}

	@Override
	public List<User> fetchAll() {
		return userRepository.findAll();
	}

	@Override
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}


	
}
