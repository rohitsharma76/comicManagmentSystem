package com.in28minutes.springboot.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.in28minutes.springboot.web.model.rms.AddressDetail;
import com.in28minutes.springboot.web.model.rms.User;
import com.in28minutes.springboot.web.model.rms.UserRepository;
import com.in28minutes.springboot.web.service.AddressDetailDAOService;


@Controller
@SessionAttributes("user")
public class RmsController 
{

	//@Autowired
	//RmsService service;
	
	@Autowired
	UserRepository userrepo;
	
	@Autowired
	AddressDetailDAOService addressDetailDAOService;
	

	
	@RequestMapping(value="/rms/rmsHome", method = RequestMethod.GET)
	public String welcomepage(ModelMap model)
	{
		Long userID = (Long) model.get("user");
		User user = userrepo.getOne(userID);
		System.out.println("user.getResturentName()"+user.getResturentName());
		model.put("resturentName", user.getResturentName());
		return "/rms/rmsHome";
	}
	
	@RequestMapping(value="/rms/addressdetail", method = RequestMethod.GET)
	public String showaddress(ModelMap model)
	{
		Long userID = (Long) model.get("user");
		User user = userrepo.getOne(userID);
		model.put("resturentName", user.getResturentName());
		model.put("address", addressDetailDAOService.getAllByUser(user));
		return "/rms/addressdetail";
	}
	
	@RequestMapping(value="/rms/admin/addBranches", method = RequestMethod.GET)
	public String showbranches(ModelMap model )
	{
		Long userID = (Long) model.get("user");
		User user = userrepo.getOne(userID);
		
		model.addAttribute("addressDetail",new AddressDetail());
		model.put("resturentName", user.getResturentName());
		model.addAttribute("stateList", this.getCountryList());
		return "/rms/admin/addBranches";
	}
	
	
	@RequestMapping(value="/rms/admin/addBranches", method = RequestMethod.POST)
	public String addbranches(@ModelAttribute("SpringWeb")AddressDetail addressDetail, ModelMap model )
	{
		Long userID = (Long) model.get("user");
		User user = userrepo.getOne(userID);
		model.addAttribute("address", addressDetail.getAddress());
		model.addAttribute("city", addressDetail.getAddress());
		model.addAttribute("state", addressDetail.getState());
		addressDetail.setUser(user);
		//AddressDetail addressDetail = new AddressDetail();
		//addressDetail.setUser(user);
		//model.addAttribute("stateList", this.getCountryList());
	         
		addressDetailDAOService.AddBranch(addressDetail);
		return "redirect:/rms/addressdetail";
	}
	
	@RequestMapping(value="/delete-branch", method = RequestMethod.GET)
	public String deletebranches(@RequestParam Long id)
	{
		addressDetailDAOService.deleteBranch(id);
		return "redirect:/rms/addressdetail";
	}
	
	@ModelAttribute("stateList")
	   public Map<String, String> getCountryList() {
	      Map<String, String> stateList = new HashMap<String, String>();
	      stateList.put("Delhi", "Delhi");
	      stateList.put("Maharashtra", "Maharashtra");
	      stateList.put("Andhra Pradesh", "Andhra Pradesh");
	      stateList.put("Andaman and Nicobar Islands", "Andaman and Nicobar Islands");
	      stateList.put("Arunachal Pradesh", "Arunachal Pradesh");
	      return stateList;
	   }
	
	
	
	
}
