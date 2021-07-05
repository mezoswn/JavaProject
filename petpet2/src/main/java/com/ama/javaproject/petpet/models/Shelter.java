package com.ama.javaproject.petpet.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="shelters")
public class Shelter {
	
	
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long id;
	 private String category;
	 private String location;
	 @Column(updatable=false)
	 private Date createdAt;
	 private Date updatedAt;
	 
	 
	 @ManyToMany(fetch = FetchType.LAZY)
	    @JoinTable(
	        name = "users_shelters", 
	        joinColumns = @JoinColumn(name = "shelter_id"), 
	        inverseJoinColumns = @JoinColumn(name = "user_id")
	    )
	    private List<User> users;
	
	
	

}
