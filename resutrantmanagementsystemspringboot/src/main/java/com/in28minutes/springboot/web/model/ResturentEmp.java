package com.in28minutes.springboot.web.model;

public class ResturentEmp
{

	private long empid;
	private String empName;
	private int age;
	private String designation;
	
	public ResturentEmp(long empid, String empName, int age, String designation) {
		super();
		this.empid = empid;
		this.empName = empName;
		this.age = age;
		this.designation = designation;
	}

	public long getEmpid() {
		return empid;
	}

	public void setEmpid(long pEmpid) {
		this.empid = pEmpid;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String pEmpName) {
		this.empName = pEmpName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int pAge) {
		this.age = pAge;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String pDesignation) {
		this.designation = pDesignation;
	}
	
	
	
	
	
}
