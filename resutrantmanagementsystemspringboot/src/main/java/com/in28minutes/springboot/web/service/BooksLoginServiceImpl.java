package com.in28minutes.springboot.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.in28minutes.springboot.web.model.bms.BooksUser;
import com.in28minutes.springboot.web.model.bms.BooksUserRepository;
import com.in28minutes.springboot.web.model.rms.User;

import com.in28minutes.springboot.web.model.rms.UserRepository;


@Component
public class BooksLoginServiceImpl implements BooksLoginService
{

	@Autowired
	private BooksUserRepository repository;
	

	
	
	@Override
	public BooksUser isValidUser(String userid, String password) 
	{
		 List<BooksUser> user = repository.findByUserName(userid);
	
		if(user.size() > 1 || user.size() == 0 )
			return null;
		if (user.size() == 1)
		{
			
			if( password.equalsIgnoreCase( user.get(0).getPassword()))
				return user.get(0);
			else
				return null;
		}
		 return null;
		
		// in28minutes, dummy
		//return userid.equalsIgnoreCase("pizzahut") && password.equalsIgnoreCase("dummy");
	}
}
