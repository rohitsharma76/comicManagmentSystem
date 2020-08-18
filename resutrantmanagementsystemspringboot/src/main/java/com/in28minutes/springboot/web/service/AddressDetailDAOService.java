package com.in28minutes.springboot.web.service;


import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.in28minutes.springboot.web.model.rms.AddressDetail;
import com.in28minutes.springboot.web.model.rms.AddressDetailRepository;
import com.in28minutes.springboot.web.model.rms.User;

@Service
public class AddressDetailDAOService {
	@Autowired
	AddressDetailRepository repository;

	@Transactional
	public void AddBranch(AddressDetail addressDetail)
	{
		
		repository.save(addressDetail);

	}

	public List<AddressDetail> findByCity(String city) {
		return repository.findByCity(city);
	}
	
	/*
	 * public List<AddressDetail> findByCityandState(String city, String state) {
	 * return repository.findByCityandState(city,state); }
	 */

	public List<AddressDetail> findByState(String state) {
		return repository.findByState(state);
	}

	public List<AddressDetail> getAllByUser(User user) {

		List<AddressDetail> addressByUser = new ArrayList<AddressDetail>();
		List<AddressDetail> allUserBranches = repository.findAll();
		for (AddressDetail userBranch : allUserBranches) {
			if (userBranch.getUser().equals(user))
				addressByUser.add(userBranch);

		}
		return addressByUser;

	}

	public AddressDetail findById(Long id) 
	{
		List<AddressDetail> allUserBranches = repository.findAll();

		for (AddressDetail userBranch : allUserBranches) 
		{
			if (userBranch.getId().equals(id))
				return userBranch;

		}
		return null;

		// return repository.findByState(state);
	}

	@Transactional
	public void deleteBranch(Long id) {
		AddressDetail addrToDel = findById(id);
		if (addrToDel != null) {
			repository.delete(addrToDel);
		}
	}

}
