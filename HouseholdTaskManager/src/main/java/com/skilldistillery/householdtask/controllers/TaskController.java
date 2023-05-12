package com.skilldistillery.householdtask.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.householdtask.data.TaskDAO;
import com.skilldistillery.householdtask.entities.Task;

@Controller
public class TaskController {
	@Autowired
	private TaskDAO taskDao;
	
	@RequestMapping(path={"/","home.do"})
	public String index(Model model) {
		List<Task> allTasks = taskDao.findAll();
		model.addAttribute("allTasks", allTasks);
	   return "home"; 
	}
	
//	@GetMapping("getFilm.do")
//	public String getFilm(Integer fid, Model model) {
//		Film film = filmDao.findById(fid);
//		model.addAttribute("film", film);
//		return "film/show";
//	}
}
