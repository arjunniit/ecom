package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import org.springframework.stereotype.Component;

import com.sun.istack.internal.NotNull;


	@Entity
	@Component
	public class UserDetails implements Serializable{
		
		private static final long serialVersionUID = 4657462015039726030L;
		
		@Id
		
		private String user_firstname;
		
		
		private String user_lastname;
		
		
		private String password;
		
	
		private String confirm_password;

	
		private String mail_id;
		
		
		private String mobile_number;
		
		public String getUser_firstname() {
			return user_firstname;
		}
		public void setUser_firstname(String user_firstname) {
			this.user_firstname = user_firstname;
		}
		public String getUser_lastname() {
			return user_lastname;
		}
		public void setUser_lastname(String user_lastname) {
			this.user_lastname = user_lastname;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getConfirm_password() {
			return confirm_password;
		}
		public void setConfirm_password(String confirm_password) {
			this.confirm_password = confirm_password;
		}
		public String getMail_id() {
			return mail_id;
		}
		public void setMail_id(String mail_id) {
			this.mail_id = mail_id;
		}
		public String getMobile_number() {
			return mobile_number;
		}
		public void setMobile_number(String mobile_number) {
			this.mobile_number = mobile_number;
		}

	}