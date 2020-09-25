package com.in28minutes.springboot.web.model.bms;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CharcterMaster")
public class CharcterMaster
{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private long id;

	
	@Column(name = "character_Name")
	private String charName;


	public CharcterMaster() {
		super();
		// TODO Auto-generated constructor stub
	}


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getCharName() {
		return charName;
	}


	public void setCharName(String charName) {
		this.charName = charName;
	}


	public CharcterMaster(long id, String charName) {
		super();
		this.id = id;
		this.charName = charName;
	}


	@Override
	public String toString() {
		return "CharcterMaster [id=" + id + ", charName=" + charName + "]";
	}
	
	
}
