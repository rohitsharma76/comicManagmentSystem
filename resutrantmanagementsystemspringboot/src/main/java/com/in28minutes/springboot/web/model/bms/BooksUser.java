package com.in28minutes.springboot.web.model.bms;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import com.in28minutes.springboot.web.model.AuditModel;

@Entity
@Table(name = "booksuser")
	public class BooksUser  {

		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="id")
		private long id;

		
		@Column(name = "username")
		private String userName;
		
		@Column(name = "password")
		private String password;
		
		protected BooksUser() {

		}

		public BooksUser(String userName, String password) 
		{
			super();
			this.userName = userName;
			this.password = password;
			}



		public long getId() {
			return id;
		}

		public String getUserName() {
			return userName;
		}

		public String getPassword() {
			return password;
		}

		
		@Override
		public String toString() {
			return "User [id=" + id + ", userName=" + userName + "]";
		}

		
	}
