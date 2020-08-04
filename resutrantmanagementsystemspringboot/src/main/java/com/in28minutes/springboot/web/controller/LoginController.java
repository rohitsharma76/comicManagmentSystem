package com.in28minutes.springboot.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.in28minutes.springboot.web.model.rms.User;
import com.in28minutes.springboot.web.model.rms.UserRepository;
import com.in28minutes.springboot.web.service.LoginServiceImpl;


@Controller
@SessionAttributes("user")
public class LoginController 
{
	@Autowired
	LoginServiceImpl loginService;
	
	@Autowired
	UserRepository userrepo;
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model){
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
    public String handleLogin(ModelMap model, @RequestParam String user,
            @RequestParam String password) 
	{

        User returnUser = loginService.isValidUser(user, password);

        if (returnUser != null)
        {
        	
    		User loginUser = userrepo.getOne(returnUser.getId());
    		System.out.println("user.getResturentName()"+loginUser.getResturentName());
    		model.put("resturentName", loginUser.getResturentName());
            model.put("user", returnUser.getId());
           return "/rms/rmsHome";
        } 
        else {
            model.put("errorMessage", "Invalid Credentials!!");
            return "login";
        }
	}
}
