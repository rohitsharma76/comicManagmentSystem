package com.in28minutes.springboot.web.rest.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.in28minutes.springboot.web.model.ResturentEmp;

@RestController
public class EmpController
{

	@GetMapping(path = "/employees")
	public List getAllBooks()
	{
		ResturentEmp emp1 = new ResturentEmp(1,"sandeep",32,"VP");
		ResturentEmp emp2 = new ResturentEmp(2,"ramesh",26,"server");
		ResturentEmp emp3 = new ResturentEmp(3,"krishnan",23,"floor Supervisore");
		return Arrays.asList(emp1,emp2,emp3);
	}
}
