package com.skilldistillery.householdtask.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	
	
	@GetMapping(path = "GetTaskData.do", params = "idLookup")
	public String findTaskById(Model model, int idLookup) {
		Task task = taskDao.findById(idLookup);
		model.addAttribute("task", task);
		return "result";
	}
	
	@GetMapping(path = "GetTaskData.do", params = "keyword")
	public String findTasksByKeyword(Model model, String keyword) {
		List<Task> taskList = taskDao.findByKeyword(keyword);
		model.addAttribute("taskList", taskList);
		return "results";
	}
//	@GetMapping("getFilm.do")
//	public String getFilm(Integer fid, Model model) {
//		Film film = filmDao.findById(fid);
//		model.addAttribute("film", film);
//		return "film/show";
//	}
}
