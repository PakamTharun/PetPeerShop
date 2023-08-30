package com.pack.PetPeerShop.Repositary;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.pack.PetPeerShop.model.Pets;
@Repository
public interface PetsRepository extends JpaRepository<Pets,Integer>{

	@Query("select u from Pets u where u.id=?1")
	Pets fetchBYId(Integer eid);

	@Query("select c from Pets c JOIN c.user p where p.id=?1")
	List<Pets> findAllById(Long id);

	

	

}
