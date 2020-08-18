package com.in28minutes.springboot.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.in28minutes.springboot.web.model.bms.BooksUser;
import com.in28minutes.springboot.web.model.bms.BooksUserRepository;
import com.in28minutes.springboot.web.service.BooksLoginServiceImpl;

@Controller
@SessionAttributes("user")
public class BooksLoginController 
{
	@Autowired
	BooksLoginServiceImpl loginService;
	
	@Autowired
	BooksUserRepository userrepo;
	
	@RequestMapping(value="/bms/bookslogin", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model){
		return "bms/bookslogin";
	}

	@RequestMapping(value = "/bms/bookslogin", method = RequestMethod.POST)
    public String handleLogin(ModelMap model, @RequestParam String user,
            @RequestParam String password) 
	{

        BooksUser returnUser = loginService.isValidUser(user, password);
        
        if (returnUser != null)
        {
        	
    		BooksUser loginUser = userrepo.getOne(returnUser.getId());
    		System.out.println("user.getResturentName()"+loginUser.getUserName());
    		model.put("resturentName", loginUser.getUserName());
            model.put("user", returnUser.getId());
           return "bms/bmshome";
        } 
        else {
            model.put("errorMessage", "Invalid Credentials for books!!");
            return "bms/bookslogin";
        }
	}
}
