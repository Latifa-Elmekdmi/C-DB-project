package net.electroshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class promotionsController {
	@RequestMapping("/promotions")
	public String promotion() {
		return "promotions";
	}
}



