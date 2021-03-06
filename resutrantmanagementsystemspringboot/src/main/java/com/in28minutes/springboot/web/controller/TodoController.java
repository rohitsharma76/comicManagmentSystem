package com.in28minutes.springboot.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.in28minutes.springboot.web.service.TodoService;

@Controller
@SessionAttributes("name")
public class TodoController {
	
	@Autowired
	TodoService service;
	
	@RequestMapping(value="/todo/list-todos", method = RequestMethod.GET)
	public String showTodos(ModelMap model){
		String name =  (String) model.get("name");
		model.put("todos", service.retrieveTodos(name));
		return "/todo/list-todos";
	}
	
	@RequestMapping(value="/todo/add-todos", method = RequestMethod.GET)
	public String addTodos(ModelMap model){
		//String name =  (String) model.get("name");
		//System.out.println(" helllo in add to");
		return "/todo/add-todos";
	}
	
	
}