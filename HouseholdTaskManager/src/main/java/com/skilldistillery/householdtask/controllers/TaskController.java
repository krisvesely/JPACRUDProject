package com.skilldistillery.householdtask.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.householdtask.data.TaskDAO;
import com.skilldistillery.householdtask.entities.Task;

@Controller
public class TaskController {
	@Autowired
	private TaskDAO taskDao;
	
	@RequestMapping(path={"/","home.do"})
	public String index(Model model) {
		List<Task> taskList = taskDao.findAll();
		model.addAttribute("taskList", taskList);
	   return "home"; 
	}
	
	
	@GetMapping(path = "GetTaskDataId.do", params = "idLookup")
	public String findTaskById(Model model, int idLookup) {
		Task task = taskDao.findById(idLookup);
		model.addAttribute("task", task);
		return "task/result";
	}
	
	@GetMapping(path = "GetTaskDataKeyword.do", params = "keyword")
	public String findTasksByKeyword(Model model, String keyword) {
		List<Task> taskList = taskDao.findByKeyword(keyword);
		model.addAttribute("taskList", taskList);
		return "task/results";
	}
	
	@PostMapping(path="NewTask.do")
	public String createTask(Model model, Task task) {
		Task addedTask = taskDao.create(task);
		model.addAttribute("task", addedTask);
		return "task/result";
	}
	
	@GetMapping(path="editTaskForm", params="taskId")
	public String editTaskForm(Model model, int taskId) {
		Task task = taskDao.findById(taskId);
		model.addAttribute("task", task);
		return "updateTask";
	}
}
