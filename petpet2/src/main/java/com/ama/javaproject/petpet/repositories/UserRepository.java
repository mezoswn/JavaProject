package com.ama.javaproject.petpet.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ama.javaproject.petpet.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User findByUsername(String Username);
}