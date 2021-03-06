package com.ama.javaproject.petpet.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ama.javaproject.petpet.models.User;
import com.ama.javaproject.petpet.services.UserService;
import com.ama.javaproject.petpet.validator.UserValidator;

@Controller
public class MainController {
	
    private UserService userService;
    private UserValidator userValidator;
    

    
    public MainController(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}
	@RequestMapping(value={"/login","/register"}) // , method=RequestMethod.POST
	public String login(Model model,@RequestParam(value="error",required=false) String error,@RequestParam(value="logout",required=false) String logout){
		if(error != null){model.addAttribute("errorMessage","Invalid Credentials.");}
		if(logout != null){model.addAttribute("logoutMessage","Logout Successful");}
		
		model.addAttribute("user",new User());
		return "loginRegistration.jsp";
	}
	
	@PostMapping("/registration") //@RequestMapping(value="/registration" , method=RequestMethod.POST)
    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model) {
        userValidator.validate(user, result);

        if (result.hasErrors()) {
            return "loginRegistration.jsp";
        }
        else if(userService.getAll().size() == 0) {
        		userService.saveUserWithAdminRole(user);
        		return "redirect:/login";
        } else {
        		userService.saveWithUserRole(user);
        		return "redirect:/login";
        }
    }

}

