package com.skilldistillery.householdtask.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class TaskTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Task task;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAHouseholdTask");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		task = em.find(Task.class, 1); 
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		task = null;
	}

	@Test
	void test_Task_entity_mapping() {
		assertNotNull(task);
		assertEquals("Insulate Pipes", task.getName());
		assertEquals("Home - Crawlspace", task.getCategory());
		assertEquals("one-time", task.getFrequency());
		assertEquals(2023, task.getDateRequired().getYear());
		assertEquals(12, task.getDateRequired().getMonthValue());
		assertEquals(1, task.getDateRequired().getDayOfMonth());
		assertEquals(84.00, task.getCost());
		assertEquals(null, task.getNotes());
	}

}
