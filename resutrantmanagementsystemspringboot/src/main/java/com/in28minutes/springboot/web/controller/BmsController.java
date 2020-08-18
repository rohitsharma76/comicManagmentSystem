package com.in28minutes.springboot.web.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.in28minutes.springboot.web.model.bms.BooksUser;
import com.in28minutes.springboot.web.model.bms.BooksUserRepository;
import com.in28minutes.springboot.web.model.bms.CharcterMaster;
import com.in28minutes.springboot.web.model.bms.ComicDetail;
import com.in28minutes.springboot.web.model.bms.PublicationMaster;
import com.in28minutes.springboot.web.service.ComicDetailService;


@Controller
@SessionAttributes("user")
public class BmsController 
{

private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private static final Logger log = LoggerFactory.getLogger(BmsController.class);
	
	@Autowired
	BooksUserRepository userrepo;
	
	@Autowired
	ComicDetailService comicDetailService;
	
	@RequestMapping(value="/bms/menu", method = RequestMethod.GET)
	public String menu(ModelMap model)
	{
		
		return "/bms/menu";
	}
	
	
	@RequestMapping(value="/bms/bmshome", method = RequestMethod.GET)
	public String welcomepage(ModelMap model)
	{
		Long userID = (Long) model.get("user");
		BooksUser user = userrepo.getOne(userID);
		System.out.println("user.getResturentName()"+user.getUserName());
		model.put("username", user.getUserName());
		return "bms/bmshome";
	}
	
	@ModelAttribute("characterList")
	   public Map<String, String> getCharacterList() {
	      Map<String, String> charcterList = new HashMap<String, String>();
	      List<CharcterMaster>charMaster = comicDetailService.findAllCharcters();
	     for(CharcterMaster character : charMaster) 
	    	 charcterList.put(character.getCharName(), character.getCharName());
	    	 
		
	      return charcterList;
	   }
	
	@ModelAttribute("publicationList")
	   public Map<String, String> getPublicationList() {
	      Map<String, String> publshersList = new HashMap<String, String>();
	      List<PublicationMaster>pubMaster = comicDetailService.findAllpublishers();
	     for(PublicationMaster publication : pubMaster) 
	    	 publshersList.put(publication.getPublicationName(), publication.getPublicationName());
	      return publshersList;
	   }
	
	@RequestMapping(value="/bms/viewComicsHome", method = RequestMethod.GET)
	public String ViewhomeComics(ModelMap model)
	{
		Long userID = (Long) model.get("user");
		BooksUser user = userrepo.getOne(userID);
		System.out.println("user.getResturentName()"+user.getUserName());
		model.put("username", user.getUserName());
		return "/bms/viewComicHome";
	}
	
	@RequestMapping(value="/bms/comicslist/{pageNumber}", method = RequestMethod.GET)
	public String ViewByPageComics(ModelMap model ,@PathVariable("pageNumber") int currentPage)
	{
		Page<ComicDetail> page =  comicDetailService.findAllComics(currentPage);
		List<ComicDetail> comicsListPaged= page.getContent();
		model.put("elementsOnPage", page.getNumberOfElements());
		model.put("totalRecords", page.getTotalElements());
		model.put("totalPages", page.getTotalPages());
		model.put("currentPage", currentPage);
		model.put("comicsList", comicsListPaged);
		return "/bms/comicslist";
	}
	
		/*
		 * @RequestMapping(value="/bms/comicslist/{}", method = RequestMethod.GET)
		 * public String showallComics(ModelMap model) { int currentPage=1;
		 * Page<ComicDetail> page = comicDetailService.findAllComics();
		 * List<ComicDetail> comicsListPaged= page.getContent();
		 * model.put("elementsOnPage", page.getNumberOfElements());
		 * model.put("totalRecords", page.getTotalElements()); model.put("totalPages",
		 * page.getTotalPages()); model.put("currentPage", currentPage);
		 * model.put("comicsList", comicsListPaged);
		 * 
		 * return "/bms/comicslist"; }
		 */
	
	@RequestMapping(value="/bms/comicslist", method = RequestMethod.GET)
	public String showallComics(ModelMap model)
	{
		return ViewByPageComics(model,1);
	}
	
	@RequestMapping(value="/bms/addcomics", method = RequestMethod.GET)
	public String showbranches(ModelMap model )
	{
		model.addAttribute("ComicDetail",new ComicDetail());
		model.addAttribute("characterList", this.getCharacterList());
		model.addAttribute("publicationList", this.getPublicationList());
		model.addAttribute("lanugageList", this.getLanugageList());
		model.addAttribute("comicTypeList", this.getComicTypeList());
		return "/bms/addcomics";
	}
	
	/*
	 * @RequestMapping(value="/bms/viewComicPage", method = RequestMethod.GET)
	 * public String showSingleComic(@RequestParam Long id , ModelMap model) {
	 * 
	 * ComicDetail comicdetail = comicDetailService.findByID(id);
	 * model.put("ComicDetail", comicdetail); model.put("id", comicdetail.getId());
	 * return "/bms/addcomics"; }
	 */
	
	/*
	 * @RequestMapping(value="/bms/viewComicPage", method = RequestMethod.POST)
	 * public String singleComic(@RequestParam Long id , ModelMap model) {
	 * ComicDetail comicdetail = comicDetailService.findByID(id);
	 * model.put("ComicDetail", comicdetail); model.put("id", comicdetail.getId());
	 * return "/bms/viewComicPage"; }
	 */
	@RequestMapping(value="/View-comic", method = RequestMethod.GET)
	public String showComic(@RequestParam Long id , ModelMap model)
	{
		
		ComicDetail comicDetail = comicDetailService.findByID(id);
		model.put("id", comicDetail.getId());
		model.put("ComicDetail", comicDetail);
		model.addAttribute("comicName", comicDetail.getComicName());
		model.addAttribute("charcterName", comicDetail.getCharcterName());
		model.addAttribute("price", comicDetail.getPrice());
		model.addAttribute("language", comicDetail.getLanguage());
		model.addAttribute("imageUrl", comicDetail.getImageUrl());
		model.addAttribute("publlicationYear", comicDetail.getPubllicationYear());
		model.addAttribute("scanned", comicDetail.getScanned());
		model.addAttribute("serialNumber", comicDetail.getSerialNumber());
		model.addAttribute("publicationHouse", comicDetail.getPublicationHouse());
		model.addAttribute("artist", comicDetail.getArtist());
		model.addAttribute("notes", comicDetail.getNotes());
		model.addAttribute("comicType", comicDetail.getComicType());
		model.addAttribute("imageName", comicDetail.getImageUrl());
		model.addAttribute("comicLocation", comicDetail.getComicLocation());
		return "/bms/viewComicPage";
	} 
	@RequestMapping(value="/update-comic", method = RequestMethod.GET)
	public String showUpdateComic(@RequestParam Long id , ModelMap model)
	{
		
		ComicDetail comicdetail = comicDetailService.findByID(id);
		model.put("ComicDetail", comicdetail);
		model.put("id", comicdetail.getId());
		return "/bms/addcomics";
	}
	
	@RequestMapping(value="/update-comic", method = RequestMethod.POST)
	public String updateComic(@RequestParam Long id , ModelMap model)
	{
		ComicDetail comicdetail = comicDetailService.findByID(id);
		model.put("ComicDetail", comicdetail);
		model.put("id", comicdetail.getId());
		
		return "/bms/addcomics";
	}
	
	
	
	@RequestMapping(value="/bms/addcomics", method = RequestMethod.POST)
	public String addbranches(@ModelAttribute("SpringWeb")ComicDetail comicDetail, ModelMap model )
	{
		
		model.addAttribute("id", comicDetail.getId());
		model.addAttribute("comicName", comicDetail.getComicName());
		model.addAttribute("charcterName", comicDetail.getCharcterName());
		model.addAttribute("price", comicDetail.getPrice());
		model.addAttribute("language", comicDetail.getLanguage());
		model.addAttribute("imageUrl", comicDetail.getImageUrl());
		model.addAttribute("publlicationYear", comicDetail.getPubllicationYear());
		model.addAttribute("scanned", comicDetail.getScanned());
		model.addAttribute("serialNumber", comicDetail.getSerialNumber());
		model.addAttribute("publicationHouse", comicDetail.getPublicationHouse());
		model.addAttribute("artist", comicDetail.getArtist());
		model.addAttribute("notes", comicDetail.getNotes());
		model.addAttribute("comicType", comicDetail.getComicType());
		model.addAttribute("imageName", comicDetail.getImageUrl());
		model.addAttribute("comicLocation", comicDetail.getComicLocation());
		comicDetailService.AddNewComic(comicDetail);
		return "redirect:/bms/comicslist";
	}
	
	@ModelAttribute("lanugageList")
	   public Map<String, String> getLanugageList() {
	      Map<String, String> langugageList = new HashMap<String, String>();
	      langugageList.put("Hindi", "Hindi");
	      langugageList.put("EngLish", "English");
	     
	      return langugageList;
	   }
	
	@ModelAttribute("comicTypeList")
	   public Map<String, String> getComicTypeList() {
	      Map<String, String> comicTypeList = new HashMap<String, String>();
	      comicTypeList.put("Normal 32 Pages", "normal 32 page");
	      comicTypeList.put("Big size 54 Pages", "Big size 54 Pages");
	      comicTypeList.put("mini comic", "mini comic");
	      comicTypeList.put("digest", "digest");
	      comicTypeList.put("A4 size comic", "A4 size comic");
	      return comicTypeList;
	   }
	
	@RequestMapping(value="/delete-comic", method = RequestMethod.GET)
	public String deleteComic(@RequestParam Long id) 
	{
		comicDetailService.deleteComic(id); 
		return "redirect:/bms/comicslist";
	 
	}
	
	@RequestMapping(value="/bms/searchcomics", method = RequestMethod.GET)
	public String showComics(ModelMap model)
	{
		//Page<ComicDetail> page =  comicDetailService.findByComiCNameOrArtists(keyword,currentPage);
		//logger.info("size of comic detail list is "+comicDetail.size());
		//model.put("comicsList", comicDetailService.);
		return "/bms/searchcomics";
	}
	
	@RequestMapping(value="/bms/searchcomics/{pageNumber}", method = RequestMethod.POST)
	public String searchComic(ModelMap model, @RequestParam String keyword ,@PathVariable("pageNumber") int currentPage) 
	{
		
		Page<ComicDetail> page =  comicDetailService.findByComiCNameOrArtists(keyword,currentPage);
		List<ComicDetail> comicsListPaged= page.getContent();
		model.put("elementsOnPage", page.getNumberOfElements());
		model.put("totalRecords", page.getTotalElements());
		model.put("totalPages", page.getTotalPages());
		model.put("currentPage", currentPage);
		model.put("comicsList", comicsListPaged);
		return "/bms/comicslist";
		/*
		 * model.put("comicsList",
		 * comicDetailService.findByComiCNameOrArtists(keyword)); model.put("count",
		 * comicDetailService.findByComiCNameOrArtists(keyword).size()); return
		 * "/bms/comicslist";
		 */
	}
	
	@RequestMapping(value="/bms/searchcomics", method = RequestMethod.POST)
	public String showallComics(ModelMap model ,  @RequestParam String keyword)
	{
		return searchComic(model,keyword,1);
	}
	
	@PostMapping("/uploadImage")
	public String uploadImage(@RequestParam("imageFile") MultipartFile imageFile)
	{
		String returnvalue="";
		try {
			comicDetailService.saveImage(imageFile);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			log.error(e.toString());
		}
		return "/bms/comicslist";
		
	}
	
	
	
	
	
}
