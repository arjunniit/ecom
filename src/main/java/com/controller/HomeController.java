package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.ProductDao;
import com.model.Product;

@Controller
public class HomeController {

	@Autowired
	ProductDao productDao;

@RequestMapping(value="/viewall2")
public String Home3()
{
	return"viewall2";
}

@RequestMapping(value="/login")
public String log()
{
	return"login";
}
@RequestMapping(value="/index")
public String log1()
{
	return"index";
}


}

