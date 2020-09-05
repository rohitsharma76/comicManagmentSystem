package com.in28minutes.springboot.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.in28minutes.springboot.web.service.AddressDetailDAOService;

@Controller
@SessionAttributes("user")
public class SearchController 
{
	
	@Autowired
	AddressDetailDAOService addressDetailDAOService;
	
	@RequestMapping(value="/rms/search/branchSearchCity", method = RequestMethod.GET)
	public String showbranches(ModelMap model )
	{
		//String user =  (String) model.get("user");
	
		return "/rms/search/branchSearchCity";
	}

	/*
	 * @PostMapping(value="/rms/search/branchSearchCity") public ModelAndView
	 * searchBranchByCity(@RequestParam String city, @RequestParam String state) {
	 * ModelAndView modelAndView = new ModelAndView(); //Long userid = (Long)
	 * modelAndView.getModel().get("user"); List<AddressDetail> addressdetails =
	 * addressDetailDAOService.findByCityandState(city, state);
	 * modelAndView.addObject("address", addressdetails);
	 * modelAndView.setViewName("/rms/addressdetail");
	 * 
	 * return modelAndView;
	 * 
	 * }
	 */

}
