package com.service;

import java.util.List;

import com.model.Product;



public interface ProductService {
	public void add(Product product);
	public void edit(Product product);
	public void delete(int productId);
	public Product getProduct(int productId);
	public List getAllProduct();
	public List getbed();
	public List gettable();
	public List getsofa();
}
