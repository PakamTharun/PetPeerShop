package com.pack.PetPeerShop.service;

import java.util.List;

import javax.validation.Valid;

import com.pack.PetPeerShop.model.Pets;

public interface PetsService {
public List<Pets> fetchAll();
public void savePets(@Valid Pets pets);
public List<Pets> getMyPets();
public Pets fetchBYId(Integer eid);
public List<Pets> findAllById(Long id);
}
