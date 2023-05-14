<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Task</title>
</head>
<body>
	<form action="NewTask.do" method="POST">
		<label for="name">Name:</label> 
		<input type="text" id="name" name="name" maxlength="45" required> 
		<br> 
		<label for="category-select">Category:</label> 
		<select id=category-select name="category" required>
			<option value="">Please choose an option</option>
			<option value="Garden">Garden</option>
			<option value="Home - Crawlspace">Home - Crawlspace</option>
			<option value="Home - Exterior">Home - Exterior</option>
			<option value="Home - Interior">Home - Interior</option>
		</select> 
		<br>
		<label for="frequency-select">Frequency:</label> 
		<select	id=category-select name="frequency">
			<option value="">Please choose an option</option>
			<option value="one-time">one-time</option>
			<option value="quarterly">quarterly</option>
			<option value="annually">annually</option>
			<option value="every 2 years">every 2 years</option>
			<option value="every 2 years">every 5 years</option>
		</select> 
		<br>
		<label for="dateLastCompleted"></label>
		<input type="date" id="dateLastCompleted" name="dateLastCompleted">
		<br>
		<label for="dateRequired"></label>
		<input type="date" id="dateRequired" name="dateRequired">
		<br>
		<label for="cost">Cost: $</label> 
		<input type="number" id="cost" name="cost" min="00.00" max="900000.00" step="0.01" value="00.00"> 
		<br>
		<label for="notes">Notes:</label> 
		<input type="text" id="notes" name="notes"> 
		<br> 
		<input type="submit" value="Add Task">
	</form>
</body>
</html>