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
@Table(name="medicals")
public class Medical {
	
	
	
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String Location;
	private String status;
	private String service;
	@Column(updatable=false)
	private Date createdAt;
    private Date updatedAt; 
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "pets_medicals", 
            joinColumns = @JoinColumn(name = "medical_id"), 
            inverseJoinColumns = @JoinColumn(name = "pet_id")
        )
    
    private List<Pet> pets;
    

}
