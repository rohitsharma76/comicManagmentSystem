package com.in28minutes.springboot.web.model.rms;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

@Entity
	public class User  {

		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="id")
		private long id;

		@Size(min = 3)
		private String userName;
		private String password;
		private String role;
		private String resturentName;

		protected User() {

		}

		public User(String userName, String password, String role, String resturentName) {
			super();
			this.userName = userName;
			this.password = password;
			this.role = role;
			this.resturentName = resturentName;
		}



		public long getId() {
			return id;
		}

		public String getUserName() {
			return userName;
		}


		public String getRole() {
			return role;
		}

		public String getPassword() {
			return password;
		}

		public String getResturentName() {
			return resturentName;
		}

		public void setResturentName(String resturentName) {
			this.resturentName = resturentName;
		}

		@Override
		public String toString() {
			return "User [id=" + id + ", userName=" + userName + ", role=" + role + ", password=" + password + "]";
		}

		
	}
