package com.in28minutes.springboot.web.model.bms;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "publicationMaster")
public class PublicationMaster
{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private long id;

	
	@Column(name = "publication_Name")
	private String publicationName;
	
	@Column(name = "pub_addres")
	private String publicationAddress;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getPublicationName() {
		return publicationName;
	}

	public void setPublicationName(String publicationName) {
		this.publicationName = publicationName;
	}

	public String getPublicationAddress() {
		return publicationAddress;
	}

	public void setPublicationAddress(String publicationAddress) {
		this.publicationAddress = publicationAddress;
	}

	public PublicationMaster() {
		
	}

	public PublicationMaster(long id, String publicationName, String publicationAddress) {
		super();
		this.id = id;
		this.publicationName = publicationName;
		this.publicationAddress = publicationAddress;
	}
	
	
}
