package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Product;
import com.service.ProductService;

@Controller
public class CategoryController {
	@Autowired
	private ProductService productService;

	@RequestMapping("/bed")
	public String getcategory(Map<String, Object> map) {
		Product product = new Product();
		map.put("product", product);
		map.put("productList", productService.getbed());
		return "viewall";
	}
	@RequestMapping("/table")
	public String getcategor(Map<String, Object> map) {
		Product product = new Product();
		map.put("product", product);
		map.put("productList", productService.gettable());
		return "viewall";
	}
	@RequestMapping("/sofa")
	public String getcatego(Map<String, Object> map) {
		Product product = new Product();
		map.put("product", product);
		map.put("productList", productService.getsofa());
		return "viewall";
	}



}
