package com.skilldistillery.householdtask.data;

import java.util.List;

import com.skilldistillery.householdtask.entities.Task;

public interface TaskDAO {

	Task findById(int taskId);
	List<Task> findByKeyword(String keyword);
	List<Task> findAll();
	
	Task create(Task task);
	Task update(Task task);
	boolean deleteById(int taskId);	
}
