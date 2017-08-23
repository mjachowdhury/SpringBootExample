package com.alomsoftware.dao;

import org.springframework.data.repository.CrudRepository;

import com.alomsoftware.model.Task;


public interface TaskRepository extends CrudRepository<Task, Integer>  {
 
}
