package com.in28minutes.springboot.web.model.rms;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;





public interface AddressDetailRepository extends JpaRepository<AddressDetail,Long>
{
	public List<AddressDetail> findByCity(String city);
	public List<AddressDetail> findByState(String state);
	public List<AddressDetail> findByUser(User user);
	
	
}
