package net.electroshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PayerController {
	@RequestMapping("/payer")
	public String login() {
		return "payer";
	}
}



