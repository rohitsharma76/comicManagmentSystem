package com.in28minutes.springboot.web.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.in28minutes.springboot.web.model.bms.BooksUser;
import com.in28minutes.springboot.web.model.rms.User;



public interface BooksLoginService 
{
	
	
	public BooksUser isValidUser(String User, String Password);

}
