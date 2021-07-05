package com.ama.javaproject.petpet.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ama.javaproject.petpet.models.Pet;

@Controller
public class PetController {

	
	@RequestMapping(value="admin/add_pet")
	public String add_pet(@ModelAttribute ("pet") Pet pet ,BindingResult result) {
		if(result.hasErrors())
		{
			
			
			
			return "something.jsp";
		}
		
		else {
			
			return "redirect:/admin";
		}
		
	}
	
	@RequestMapping(value="/user_info/{id}")
	public String show_user(HttpSession session,Model model) {
		
		
		return null;
		
	}
	
	
	
}
