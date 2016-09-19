package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Role;
import com.model.UserDetails;



@Repository
@Transactional
public class RegisterDAOImpl implements RegisterDAO {
	
	@Autowired(required=true)
	SessionFactory sessionFactory;
	

@Override
public void saveOrUpdate(UserDetails userDetails){
	userDetails.setEnabled(true);
	Role m=new Role();
	m.setU(userDetails);
	m.setRole("ROLE_USER");
	sessionFactory.getCurrentSession().save(userDetails);
	sessionFactory.getCurrentSession().save(m);
	
	
	sessionFactory.getCurrentSession().saveOrUpdate(userDetails);
}
}
