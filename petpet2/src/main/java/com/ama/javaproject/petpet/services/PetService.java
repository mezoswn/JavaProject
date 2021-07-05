package com.ama.javaproject.petpet.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ama.javaproject.petpet.models.Pet;
import com.ama.javaproject.petpet.repositories.PetRepository;

@Service
public class PetService {

	
	private final PetRepository petRepository;

	public PetService(PetRepository petRepository) {
		
		this.petRepository = petRepository;
	}
	
	
	public List<Pet> View_allPets() {
		
		
		
		return petRepository.findAll();
		
	}
	
	
	public Pet create_pet(Pet pet) {
		
		
		return petRepository.save(pet);
		
		
	}
	
	public Pet show_pet(Long id) {
		
		
		
	return petRepository.findById(id).orElse(null);
		
	}
	}
	

