package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.UserDetails;



@Repository
@Transactional
public class RegisterDAOImpl implements RegisterDAO {
	
	@Autowired(required=true)
	SessionFactory sessionFactory;
	

@Override
public void saveOrUpdate(UserDetails userDetails){
	sessionFactory.getCurrentSession().saveOrUpdate(userDetails);
}
}
