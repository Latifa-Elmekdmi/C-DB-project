package net.electroshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaiementCartController {
	@RequestMapping("/paiementCart")
	public String login() {
		return "paiementCart";
	}
}
