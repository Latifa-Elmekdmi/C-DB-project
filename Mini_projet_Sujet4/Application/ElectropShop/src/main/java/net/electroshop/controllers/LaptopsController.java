package net.electroshop.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LaptopsController {
	
	@RequestMapping(value = "/laptops")
	public String login() {
		
		  
		
		return "laptops";
	}
}
