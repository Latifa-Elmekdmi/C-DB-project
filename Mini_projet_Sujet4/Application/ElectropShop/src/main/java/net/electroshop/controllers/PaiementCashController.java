package net.electroshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PaiementCashController {
	@RequestMapping("/paiementCash")
	public String login() {
		return "paiementCash";
	}
}



