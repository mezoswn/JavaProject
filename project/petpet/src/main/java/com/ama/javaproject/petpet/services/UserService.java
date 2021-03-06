package com.ama.javaproject.petpet.services;

import java.util.List;
import java.util.Optional;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.ama.javaproject.petpet.models.Role;
import com.ama.javaproject.petpet.models.User;
import com.ama.javaproject.petpet.repositories.RoleRepository;
import com.ama.javaproject.petpet.repositories.UserRepository;



@Service
public class UserService {
	
    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;
	public UserService(UserRepository userRepository, RoleRepository roleRepository,
			BCryptPasswordEncoder bCryptPasswordEncoder) {
		this.userRepository = userRepository;
		this.roleRepository = roleRepository;
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	}
	
	public Role findRoleById(Long id) {
		Optional<Role> optionalRole = roleRepository.findById(id);
	    if(optionalRole.isPresent()) {
	        return optionalRole.get();
	    } else {
	        return null;
	    }
	}
    
    
    // 1
    public void saveWithUserRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        Role r = findRoleById( (long) 1);
        user.setRoles(r);
        userRepository.save(user);
    }
     
     // 2 
    public void saveUserWithAdminRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        Role r = findRoleById( (long) 2);
        user.setRoles(r);
        userRepository.save(user);
    }    
    
    // 3
    public User findByUsername(String email) {
        return userRepository.findByEmail(email);
    }
    public List<User> getAll(){
    	return (List<User>) userRepository.findAll();
    }

}
