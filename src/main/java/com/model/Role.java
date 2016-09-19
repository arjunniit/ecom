package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


@Entity
public class Role implements Serializable{
	private static final long serialVersionUID = 4657462015039726030L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String roleid;
	private String role;
	
	@OneToOne
	@JoinColumn(name="mail_id")
	private UserDetails u;
	
	public String getRoleid() {
		return roleid;
	}
	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public UserDetails getU() {
		return u;
	}
	public void setU(UserDetails u) {
		this.u = u;
	}
	

}
