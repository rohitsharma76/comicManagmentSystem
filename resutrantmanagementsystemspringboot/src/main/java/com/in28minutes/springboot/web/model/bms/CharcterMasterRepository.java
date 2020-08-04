package com.in28minutes.springboot.web.model.bms;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CharcterMasterRepository extends JpaRepository<CharcterMaster,Long>
{ 

 public List<BooksUser> findByCharName(String charcter);
}
