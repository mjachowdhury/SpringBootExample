package com.alomsoftware.dao;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.repository.CrudRepository;

import com.alomsoftware.model.Task;

@Configuration
public interface TaskRepository extends CrudRepository<Task, Integer>  {
 
}
