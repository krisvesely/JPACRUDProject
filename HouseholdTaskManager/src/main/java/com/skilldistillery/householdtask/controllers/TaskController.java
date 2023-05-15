package com.skilldistillery.householdtask.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@GetMapping(path = "getTaskDataId.do", params = "idLookup")
	public String findTaskById(Model model, int idLookup) {
		String resultType = "viewById";
		Task task = taskDao.findById(idLookup);
		model.addAttribute("task", task);
		model.addAttribute("resultType", resultType);
		return "task/result";
	}
	
	@GetMapping(path = "getTaskDataKeyword.do", params = "keyword")
	public String findTasksByKeyword(Model model, String keyword) {
		List<Task> taskList = taskDao.findByKeyword(keyword);
		model.addAttribute("taskList", taskList);
		return "task/results";
	}
	
	@RequestMapping(path="addTask.do")
	public String addForm() {
		return "task/addTask"; 
	}
	
	@PostMapping(path="newTask.do")
	public String createTask(Model model, Task task) {
		String resultType = "viewNew";
		Task addedTask = taskDao.create(task);
		model.addAttribute("task", addedTask);
		model.addAttribute("resultType", resultType);
		return "task/result";
	}
	
	@GetMapping(path="editTaskForm.do", params="taskId")
	public String editTaskForm(Model model, int taskId) {
		Task task = taskDao.findById(taskId);
		model.addAttribute("task", task);
		return "task/updateTask";
	}
	
	@PostMapping(path="submitUpdate.do", params="taskId")
	public String updateTask(Model model, Task task, int taskId, RedirectAttributes redir) {
		Task updatedTask = taskDao.update(task, taskId);
		model.addAttribute("task", updatedTask);
		redir.addFlashAttribute("task", updatedTask);
		return "redirect:updateTask.do";
	}
	
	@GetMapping(path="updateTask.do")
	public String updateRoute(Model model) {
		String resultType = "viewUpdate";
		model.addAttribute("resultType", resultType);
		return "task/result";
	}
	
	@RequestMapping(path = {"deleteTask.do"}, params = "taskId")
	public String deleteFilm(Model model, int taskId) {
		boolean deleted = taskDao.deleteById(taskId);
		System.out.println(deleted);
		model.addAttribute("deleted", deleted);
		return "task/deleteResult";
	}
}
