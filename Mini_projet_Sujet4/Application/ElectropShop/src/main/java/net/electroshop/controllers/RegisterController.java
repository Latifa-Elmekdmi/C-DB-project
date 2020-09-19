package net.electroshop.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import net.electroshop.entities.Categorie;
import net.electroshop.entities.Client;
import net.electroshop.entities.Produit;
import net.electroshop.metier.AdminCategoriesMetier;
;

@Controller
public class RegisterController {
	@Autowired
	private AdminCategoriesMetier metier;
	
	@RequestMapping("/register")
	public String registrer() {
		return "register";
	}
	
	@RequestMapping("/saveUser")
	public String saveUser(@RequestParam String adrss,@RequestParam String Email,@RequestParam String Mobile,@RequestParam String Name,@RequestParam String Password,Model model) {
		
		Client client=new Client();
		client.setAdresse(adrss);
		client.setEmail(Email);
		client.setTel(Mobile);
		client.setNomClient(Name);
		client.setPassword(Password);
		
		
		metier.addUserMetier(client);
		

		
		
		
		
		
		return "successRegistrer";
	}
	
}




