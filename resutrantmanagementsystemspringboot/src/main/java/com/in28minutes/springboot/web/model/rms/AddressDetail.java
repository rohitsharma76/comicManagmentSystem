package com.in28minutes.springboot.web.model.rms;

import javax.persistence.Cacheable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "BranchAddress")

@Cacheable
public class AddressDetail 
{

	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	

	
	 @ManyToOne(cascade = CascadeType.PERSIST)
	 @JoinColumn(name = "userid", referencedColumnName ="id")
	 private User user;

	@Column(name = "branch_address")
	private String address;

	@Column(name = "branch_city")
	private String city;

	@Column(name = "branch_state")
	private String state;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String pAddress) {
		address = pAddress;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String pCity) {
		city = pCity;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String pState) {
		this.state = pState;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public AddressDetail() 
	{
		super();
		
	}

	public AddressDetail(Long id, String address, String city, String state) {
		super();
		this.id = id;
		this.address = address;
		this.city = city;
		this.state = state;
	}
	
	public AddressDetail(String address, String city, String state) {
		super();
		this.address = address;
		this.city = city;
		this.state = state;
	}
	
	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = (int) (prime * result + id);
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		AddressDetail other = (AddressDetail) obj;
		if (id != other.id) {
			return false;
		}
		return true;
	}

	

	@Override
	public String toString() {
		return "AddressDetail [id=" + id + ", user=" + user + ", Address=" + address + ", City=" + city + ", state="
				+ state + "]";
	}

}
