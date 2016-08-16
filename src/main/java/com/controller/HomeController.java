package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
@RequestMapping(value="/beds")
public String Home()
{
	return"beds";
}
@RequestMapping(value="/doublebed")
public String Home1()
{
	return"doublebed";
}

}

