package com.alomsoftware.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SampleRestController {
	
	@GetMapping("/hello")
	public String salam(){
		return "As salamu Alykum";
	}

}
