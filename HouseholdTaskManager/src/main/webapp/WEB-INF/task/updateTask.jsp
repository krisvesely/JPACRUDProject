<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Task</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
<link rel="stylesheet" href="styles.css">
</head>
<body>
	<header>
		<%@ include file="../nav.jsp"%>
	</header>
	<div class="container">
		<br>
		<h3>Please modify any fields that you want to update:</h3>
		<br>
		<form action="submitUpdate.do?taskId=${task.id}" method="POST">
			<label for="name">Name:</label> 
			<input type="text" id="name" name="name" maxlength="45" value="${task.name}"> 
			<br> 
			<label for="category-select">Category:</label> 
			<select id=category-select name="category">
				<option value="${task.category}" selected>${task.category}</option>
				<option value="Garden">Garden</option>
				<option value="Home - Crawlspace">Home - Crawlspace</option>
				<option value="Home - Exterior">Home - Exterior</option>
				<option value="Home - Interior">Home - Interior</option>
			</select> 
			<br>
			<label for="frequency-select">Frequency:</label> 
			<select	id=category-select name="frequency">
				<option  value="${task.frequency}" selected>${task.frequency}</option>
				<option value="one-time">one-time</option>
				<option value="quarterly">quarterly</option>
				<option value="annually">annually</option>
				<option value="every 2 years">every 2 years</option>
				<option value="every 3 years">every 3 years</option>
				<option value="every 5 years">every 5 years</option>
			</select> 
			<br>
			<label for="dateLastCompleted">Date Last Completed:</label>
			<input type="date" id="dateLastCompleted" name="dateLastCompleted" value="${task.dateLastCompleted}">
			<br>
			<label for="dateRequired">Date Required:</label>
			<input type="date" id="dateRequired" name="dateRequired" value="${task.dateRequired}">
			<br>
			<label for="cost">Cost: $</label> 
			<input type="number" id="cost" name="cost" min="00.00" max="900000.00" step="0.01" value="${task.cost}"> 
			<br>
			<label for="notes">Notes:</label> 
			<input type="text" id="notes" name="notes"> 
			<br> 
			<input type="submit" value="Update Task">
		</form>
	</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>