package com.in28minutes.springboot.web.service;


import java.util.List;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.in28minutes.springboot.web.model.bms.ComicDetail;
import com.in28minutes.springboot.web.model.bms.ComicDetailRepository;
import com.in28minutes.springboot.web.model.bms.PublicationMasterRepository;
import com.in28minutes.springboot.web.model.bms.PublicationMaster;
import com.in28minutes.springboot.web.model.bms.CharcterMaster;
import com.in28minutes.springboot.web.model.bms.CharcterMasterRepository;

@Service
public class ComicDetailService
{

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private static final Logger log = LoggerFactory.getLogger(ComicDetailService.class);
	
	@Autowired
	ComicDetailRepository comicDetails;
	
	@Autowired
	CharcterMasterRepository charMasterRepository;
	
	@Autowired
	PublicationMasterRepository publicationMasterRepository;
	
	@Transactional
	public void AddNewComic(ComicDetail pComicDetail)
	{
		logger.info("ComicDetail ID is "+pComicDetail.getId());
		comicDetails.save(pComicDetail);
		/*
		 * if(pComicDetail.getId() != null) { System.out.println(" helllo rohit"); }
		 * else { comicDetails.save(pComicDetail); }
		 */
	}
	
	@Transactional
	public void AddNewCharcter(CharcterMaster pCharcterMaster)
	{
		charMasterRepository.save(pCharcterMaster);
	}
	
	@Transactional
	public void AddNewPublication(PublicationMaster pPublicationMaster)
	{
		publicationMasterRepository.save(pPublicationMaster);
	}
	
	public ComicDetail findByID(Long pID)
	{
		ComicDetail comicdetail = comicDetails.getOne(pID);
		return comicdetail;
		/*
		 * List<ComicDetail> comics = comicDetails.findByComicName(pComicName); return
		 * comics;
		 */
	}
	
	public List<ComicDetail> findByComicName(String pComicName)
	{
		List<ComicDetail> comics = comicDetails.findByComicName(pComicName);
		return comics;
	}
	
	public List<ComicDetail> findByCharcterName(String pCharcterName)
	{
		return  comicDetails.findByCharcterName(pCharcterName);
		
	}
	
	public List<ComicDetail> findByPublisherName(String PublicationHouse)
	{
		return  comicDetails.findByPublicationHouse(PublicationHouse);
		
	}
	
	public Page<ComicDetail> findAllComics(int pageNumber)
	{
		Pageable pageable =  PageRequest.of(pageNumber -1 , 8);
		return comicDetails.findAll(pageable);
	}
	
	public List<CharcterMaster> findAllCharcters()
	{
		return charMasterRepository.findAll();
	}
	
	public List<PublicationMaster> findAllpublishers()
	{
		return publicationMasterRepository.findAll();
	}
	
	public Long findAllComicsCount()
	{
		return comicDetails.count();
	}
	

	public void deleteComic(Long id) {
		comicDetails.deleteById(id);
		
	}
	
	public List<ComicDetail> findByComiCNameOrArtists(String Keyword)
	{
		return comicDetails.findComicsByKeyword(Keyword);
	}
	
	


}
