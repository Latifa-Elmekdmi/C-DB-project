package net.electroshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminLoginController {
	@RequestMapping("/adminlogin")
	public String login() {
		return "adminlogin";
	}
}




