package com.ama.javaproject.petpet.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ama.javaproject.petpet.models.Role;




public interface RoleRepository extends CrudRepository<Role, Long>{
	List<Role> findAll();
	Role findByType(String type);

}
