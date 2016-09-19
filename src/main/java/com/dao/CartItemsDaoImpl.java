package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.CartItems;
import com.model.Product;

@Repository
public class CartItemsDaoImpl implements CartItemsDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void add(CartItems cartItems) {

		sessionFactory.getCurrentSession().save(cartItems);

	}

	@Override
	public List getAllProduct() {

		return sessionFactory.getCurrentSession().createQuery("from CartItems ").list();

	}

	@Override
	public void update(CartItems cartItems) {
		sessionFactory.getCurrentSession().update(cartItems);
	}

	@Override
	public CartItems getProductById(int id) {
		System.out.println((CartItems) sessionFactory.getCurrentSession().get(CartItems.class, id));
		return (CartItems) sessionFactory.getCurrentSession().get(CartItems.class, id);
	}

	@Override
	public void delete(int id) {
		sessionFactory.getCurrentSession().delete(getProductById(id));

	}

}