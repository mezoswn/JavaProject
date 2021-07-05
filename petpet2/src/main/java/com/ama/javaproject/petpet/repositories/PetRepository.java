package com.ama.javaproject.petpet.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.ama.javaproject.petpet.models.Pet;

public interface PetRepository extends CrudRepository<Pet,Long> {

	
	
	
	List<Pet> findAll();
	Optional<Pet> findPetById(Long id);
}
