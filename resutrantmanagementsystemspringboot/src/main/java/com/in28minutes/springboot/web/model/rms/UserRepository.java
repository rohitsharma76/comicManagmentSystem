package com.in28minutes.springboot.web.model.rms;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends JpaRepository<User,Long>
{ 
 public List<User> findByRole(String role);
 public List<User> findByUserName(String user);
}
