package com.alomsoftware.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.alomsoftware.service.TaskService;

@Controller
public class MainController {
	
	@Autowired	
	private TaskService taskService;
	
	@GetMapping("/")
	public String home(){
		return "index";
	}

}
