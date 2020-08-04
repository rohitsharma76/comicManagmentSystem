package com.in28minutes.springboot.web.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("user")
public class WelcomeController {

	/*
	 * @RequestMapping(value="/", method = RequestMethod.GET) public String
	 * showHomePage(ModelMap model){ model.put("user", getLoggedInUserName(model));
	 * return "/rms/rmsHome"; }
	 * 
	 * 
	 * 
	 * 
	 * public String getLoggedInUserName(ModelMap model) { Object principal =
	 * SecurityContextHolder.getContext() .getAuthentication().getPrincipal();
	 * 
	 * if (principal instanceof UserDetails) return ((UserDetails)
	 * principal).getUsername();
	 * 
	 * return principal.toString(); }
	 */
}
