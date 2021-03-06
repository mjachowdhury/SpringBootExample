package com.alomsoftware.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alomsoftware.service.TaskService;

@RestController
public class SampleRestController {
	
	@Autowired	
	private TaskService taskService;
	
	@GetMapping("/hello")
	public String salam(){
		return "As salamu Alykum";
	}

	/*@GetMapping("/all-tasks")
	public String allTask(){
		return taskService.findAll().toString();
	}
	
	@GetMapping("/save-task")
	public String saveTask(@RequestParam String name, @RequestParam String desc){
		Task task = new Task(name,desc, new Date(), false);
		taskService.save(task);		
		return "Task-saved";		
	}
	
	@GetMapping("/delete-task")
	public String deleteTask(@RequestParam  int id){
		taskService.delete(id); 
		return "Task-deleted";		
	}*/
}
