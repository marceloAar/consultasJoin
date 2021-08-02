package com.mar.countries.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mar.countries.models.Country;
import com.mar.countries.services.ApiService;


@Controller
public class CountryController {

	private final ApiService apiService;

	public CountryController(ApiService apiService) {
		this.apiService = apiService;
	}
	
	//mostrar
    @RequestMapping("/")
    public String inicio(@ModelAttribute("paises") Country country, Model model) {
    
    	List<Country> paises = apiService.allCountry();
		model.addAttribute("paises", paises);		
    	
	return "index.jsp";
	} 
    

}
