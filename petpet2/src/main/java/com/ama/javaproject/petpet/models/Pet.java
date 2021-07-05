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
import javax.persistence.ManyToOne;
import javax.persistence.Table;



	@Entity
	@Table(name="pets")
	public class Pet {
	
	
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String category;
	private String name;
	@Column(updatable=false)
	private Date createdAt;
    private Date updatedAt;
    
    
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "pets_medicals", 
            joinColumns = @JoinColumn(name = "pet_id"), 
            inverseJoinColumns = @JoinColumn(name = "medical_id")
        )
    
    private List<Medical> medicals;
    

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="user_id")
    private User user;
	
	
	private String condition;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	

}
