package com.in28minutes.springboot.web.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.in28minutes.springboot.web.model.rms.User;
import com.in28minutes.springboot.web.model.rms.UserRepository;



@Controller
public class UserController 
{
	
	public class UserResource {

		@Autowired
		private UserRepository service;

		@GetMapping("/users")
		public List<User> retrieveAllUsers() {
			return service.findAll();
		}

		@GetMapping("/users/{id}")
		public Optional<User> retrieveUser(@PathVariable Long id) {
			return service.findById(id);
		}

	}
}
