package com.skilldistillery.householdtask.entities;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Task {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String category;
	
	private String frequency;
	
	@Column(name="date_last_completed")
	private LocalDate dateLastCompleted;
	
	@Column(name="date_required")
	private LocalDate dateRequired;
	
	private double cost;
	
	private String notes;
	
	public Task() {}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getFrequency() {
		return frequency;
	}

	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}

	public LocalDate getDateLastCompleted() {
		return dateLastCompleted;
	}

	public void setDateLastCompleted(String dateLastCompleted) {
		this.dateLastCompleted = LocalDate.parse(dateLastCompleted);
	}

	public LocalDate getDateRequired() {
		return dateRequired;
	}

	public void setDateRequired(String dateRequired) {
		this.dateRequired = LocalDate.parse(dateRequired);
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	@Override
	public String toString() {
		return "Task [id=" + id + ", name=" + name + ", category=" + category + ", frequency=" + frequency
				+ ", dateLastCompleted=" + dateLastCompleted + ", dateRequired=" + dateRequired + ", cost=" + cost
				+ ", notes=" + notes + "]";
	}
}
