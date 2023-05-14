package com.skilldistillery.householdtask.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.aspectj.weaver.NameMangler;
import org.springframework.stereotype.Service;

import com.skilldistillery.householdtask.entities.Task;

@Transactional
@Service
public class TaskDAOImpl implements TaskDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Task findById(int taskId) {
		return em.find(Task.class, taskId);
	}
	
	@Override
	public List<Task> findByKeyword(String keyword) {
		String queryString = "SELECT task FROM Task task WHERE task.name LIKE :keyword "
				+ "OR task.category LIKE :keyword OR task.notes LIKE :keyword";
		List<Task> taskList = em.createQuery(queryString, Task.class)
				 .setParameter("keyword","%" + keyword + "%")
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
		em.persist(task);
		Task newTask = em.find(Task.class, task.getId());
		return newTask;
	}

	@Override
	public Task update(Task updatingTask, int taskId) {
		Task managedTask = em.find(Task.class, taskId);
		managedTask.setName(updatingTask.getName());
		managedTask.setCategory(updatingTask.getCategory());
		managedTask.setFrequency(updatingTask.getFrequency());
		managedTask.setDateLastCompleted(updatingTask.getDateLastCompleted().toString());
		managedTask.setDateRequired(updatingTask.getDateRequired().toString());
		managedTask.setCost(updatingTask.getCost());
		String existingNotes = managedTask.getNotes();
		String newNotes = updatingTask.getNotes();
		if(existingNotes != null && !existingNotes.equals("") && !existingNotes.equals(newNotes)) {
			String aggregateNotes = existingNotes + "\n" + newNotes;
			managedTask.setNotes(aggregateNotes);
		}
		else {
			managedTask.setNotes(newNotes);
		}
		return managedTask;
	}

	@Override
	public boolean deleteById(int taskId) {
		Task deletingTask = em.find(Task.class, taskId);
		em.remove(deletingTask);
		return false;
	}

}
