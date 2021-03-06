package com.ama.javaproject.petpet.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ama.javaproject.petpet.models.Role;
import com.ama.javaproject.petpet.repositories.RoleRepository;





@Service
public class RoleService {
private RoleRepository roleRepository;
	
	public RoleService(RoleRepository roleRepository){
		this.roleRepository = roleRepository;
	}
	
	public List<Role> all(){
		return (List<Role>) roleRepository.findAll();
	}
	
	public Role findByName(String name){
		return (Role) roleRepository.findByType(name);
	}
	
	public void create(Role role){
		roleRepository.save(role);
	}
	public void update(Role role){
		roleRepository.save(role);
	}
	public void destroy(long id){
		roleRepository.deleteById(id);
	}
}
