package com.pack.PetPeerShop.service;

import java.util.List;

import javax.validation.Valid;

import com.pack.PetPeerShop.model.User;

public interface UserService {
public void save(User user);
public List<User> fetchAll();
User findByUsername(String username);
}
