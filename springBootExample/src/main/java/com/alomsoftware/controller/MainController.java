package com.alomsoftware.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alomsoftware.model.Task;
import com.alomsoftware.service.TaskService;

@Controller
public class MainController {
	
	@Autowired	
	private TaskService taskService;
	
	@GetMapping("/")
	public String home(HttpServletRequest request){
		request.setAttribute("mode", "MODE_TASKS");
		
		return "index";
	}
	
	@GetMapping("/all-tasks")
	public String allTasks(HttpServletRequest request){
		request.setAttribute("tasks",taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "index";
	}
	
	@GetMapping("/new-tasks")
	public String newTask(HttpServletRequest request){		 
		request.setAttribute("mode", "MODE_NEW");
		return "index";
	}
	
	
	@PostMapping("/save-tasks")
	public String saveTask(@ModelAttribute Task task, HttpServletRequest request){		 
		taskService.save(task);
		request.setAttribute("tasks",taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "index";
	}
	@GetMapping("/update-tasks")
	public String updateTask(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("task",taskService.findTask(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "index";
	}
	
	@GetMapping("/delete-tasks")
	public String deleteTask(@RequestParam int id, HttpServletRequest request){
		taskService.delete(id);
		request.setAttribute("tasks",taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "index";
	}

}
