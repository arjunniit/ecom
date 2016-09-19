package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.RegisterDAO;
import com.model.Role;
import com.model.UserDetails;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService{
	
	@Autowired RegisterDAO registerDAO;
	
	public void saveOrUpdate(UserDetails userDetails){
		
		registerDAO.saveOrUpdate(userDetails);
		Role role =new Role();
		
		role.setRole("ROLE_USER");
		role.setU(userDetails);
	}
}
