package com.in28minutes.springboot.web.model.bms;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PublicationMasterRepository extends JpaRepository<PublicationMaster,Long>
{ 

 public List<BooksUser> findByPublicationName(String charcter);
}
