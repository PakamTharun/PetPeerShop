package com.pack.PetPeerShop.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pack.PetPeerShop.Repositary.PetsRepository;
import com.pack.PetPeerShop.model.Pets;
@Service
public class PetsServiceImpl implements PetsService{
@Autowired
PetsRepository petsRepository;

@Override
public List<Pets> fetchAll() {
	return petsRepository.findAll();
}

@Override
public void savePets(@Valid Pets pets) {
	petsRepository.save(pets);
	
}

@Override
public List<Pets> getMyPets() {
	
	return petsRepository.findAll();
}

@Override
public Pets fetchBYId(Integer eid) {
	Pets p=petsRepository.fetchBYId(eid);
	return p;
}

@Override
public List<Pets> findAllById(Long id) {
	List<Pets>p=petsRepository.findAllById(id);
	return p;
}






}
