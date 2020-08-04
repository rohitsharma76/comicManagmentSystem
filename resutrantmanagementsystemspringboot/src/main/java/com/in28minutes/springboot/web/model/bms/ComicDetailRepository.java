package com.in28minutes.springboot.web.model.bms;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface ComicDetailRepository extends JpaRepository<ComicDetail,Long>
{ 

 public List<ComicDetail> findByComicName(String comicName);
 public List<ComicDetail> findByCharcterName(String CharcterName);
 public List<ComicDetail> findByPublicationHouse(String PublicationHouse);
 

 
 @Query(value="select * from comic cd where cd.comic_name like %:keyword% or cd.artist like %:keyword%", nativeQuery=true)
 List<ComicDetail> findComicsByKeyword(@Param("keyword") String keyword);
}
