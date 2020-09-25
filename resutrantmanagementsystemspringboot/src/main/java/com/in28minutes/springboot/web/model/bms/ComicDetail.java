package com.in28minutes.springboot.web.model.bms;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "comic")
public class ComicDetail 
{
	
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "comic_name")
	private String comicName;
	@Column(name = "char_name")
	private String charcterName;
	@Column(name = "price")
	private String price;
	@Column(name = "language")
	private String language;
	@Column(name = "imagePath")
	private String imageUrl;
	@Column(name = "publication_year")
	private String publlicationYear;
	@Column(name = "scanned")
	private char scanned;
	@Column(name = "publication_house")
	private String publicationHouse;
	@Column(name = "serial_numer")
	private String serialNumber;
	@Column(name = "artist")
	private String artist;
	@Column(name = "notes")
	private String notes;
	@Column(name = "Comic_Type")
	private String comicType;
	@Column(name = "comic_location")
	private String comicLocation;
	
	
	
	public ComicDetail() {
		
	}
	
	public ComicDetail(Long id, String comicName, String charcterName, String price, String language, String imageUrl,
			String publlicationYear, char scanned, String publicationHouse, String serialNumber, String artist,
			String notes, String comicType, String comicLocation) {
		super();
		this.id = id;
		this.comicName = comicName;
		this.charcterName = charcterName;
		this.price = price;
		this.language = language;
		this.imageUrl = imageUrl;
		this.publlicationYear = publlicationYear;
		this.scanned = scanned;
		this.publicationHouse = publicationHouse;
		this.serialNumber = serialNumber;
		this.artist = artist;
		this.notes = notes;
		this.comicType = comicType;
		this.comicLocation = comicLocation;
	}
	
	

	public ComicDetail(String comicName, String charcterName, String price, String language, String imageUrl,
			String publlicationYear, char scanned, String publicationHouse, String serialNumber, String artist,
			String notes, String comicType, String comicLocation) {
		super();
		this.comicName = comicName;
		this.charcterName = charcterName;
		this.price = price;
		this.language = language;
		this.imageUrl = imageUrl;
		this.publlicationYear = publlicationYear;
		this.scanned = scanned;
		this.publicationHouse = publicationHouse;
		this.serialNumber = serialNumber;
		this.artist = artist;
		this.notes = notes;
		this.comicType = comicType;
		this.comicLocation = comicLocation;
	}

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getComicName() {
		return this.comicName;
	}


	public void setComicName(String comicName) {
		this.comicName = comicName;
	}


	public String getCharcterName() {
		return charcterName;
	}


	public void setCharcterName(String charcterName) {
		this.charcterName = charcterName;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getLanguage() {
		return language;
	}


	public void setLanguage(String language) {
		this.language = language;
	}


	public String getImageUrl() {
		return imageUrl;
	}


	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}


	public String getPubllicationYear() {
		return publlicationYear;
	}


	public void setPubllicationYear(String publlicationYear) {
		this.publlicationYear = publlicationYear;
	}


	public char getScanned() {
		return scanned;
	}


	public void setScanned(char scanned) {
		this.scanned = scanned;
	}


	public String getSerialNumber() {
		return serialNumber;
	}


	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}


	public String getPublicationHouse() {
		return publicationHouse;
	}



	public void setPublicationHouse(String publicationHouse) {
		this.publicationHouse = publicationHouse;
	}



	public String getArtist() {
		return artist;
	}



	public void setArtist(String artist) {
		this.artist = artist;
	}



	public String getNotes() {
		return notes;
	}



	public void setNotes(String notes) {
		this.notes = notes;
	}


	public String getComicType() {
		return comicType;
	}
	public void setComicType(String comicType) {
		this.comicType = comicType;
	}
	public String getComicLocation() {
		return comicLocation;
	}




	public void setComicLocation(String comicLocation) {
		this.comicLocation = comicLocation;
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
		ComicDetail other = (ComicDetail) obj;
		if (id != other.id) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "ComicDetail [id=" + id + ", comicName=" + comicName + ", charcterName=" + charcterName + ", price="
				+ price + ", language=" + language + ", imageUrl=" + imageUrl + ", publlicationYear=" + publlicationYear
				+ ", scanned=" + scanned + ", publicationHouse=" + publicationHouse + ", serialNumber=" + serialNumber
				+ ", artist=" + artist + ", notes=" + notes + ", comicType=" + comicType + ", comicLocation="
				+ comicLocation + "]";
	}
	


	
	}
	
	



