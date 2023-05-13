package com.skilldistillery.householdtask.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.householdtask.entities.Task;

@Service
@Transactional
public class TaskDAOImpl implements TaskDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Task findById(int taskId) {
		return em.find(Task.class, taskId);
	}
	
	@Override
	public List<Task> findByKeyword(String keyword) {
		String queryString = "SELECT task FROM Task task WHERE task.name LIKE OR task.category LIKE OR task.notes LIKE ";
		List<Task> taskList = em.createQuery(queryString, Task.class)
				.getResultList();
		return taskList;
	}

	@Override
	public List<Task> findAll() {
		String queryString = "SELECT task FROM Task task";
		List<Task> taskList = em.createQuery(queryString, Task.class)
				.getResultList();
		return taskList;
	}

	@Override
	public Task create(Task task) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Task update(Task task) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int taskId) {
		// TODO Auto-generated method stub
		return false;
	}

}
