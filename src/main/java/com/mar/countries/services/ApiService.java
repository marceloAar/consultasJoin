package com.mar.countries.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mar.countries.models.Country;
import com.mar.countries.repositories.CountryRepository;

@Service
public class ApiService {
	
	private final CountryRepository countryRepository;

	public ApiService(CountryRepository countryRepository) {
		this.countryRepository = countryRepository;
	}	

	public List<Country> allCountry() {
		return countryRepository.findAll();
	}	

}
