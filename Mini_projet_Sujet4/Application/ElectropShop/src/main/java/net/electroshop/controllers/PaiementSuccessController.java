package net.electroshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaiementSuccessController {
	@RequestMapping("/successPaiement")
	public String login() {
		return "successPaiement";
	}
}
