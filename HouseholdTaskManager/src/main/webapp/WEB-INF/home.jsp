<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>'Honey Do' Household Task Manager</title>
<jsp:include page="./bootstrapHead.jsp"></jsp:include>
<link rel="stylesheet" href="styles.css">
</head>
<body>
	<header>
		<%@ include file="nav.jsp"%>
	</header>

<!-- <a href="idForm.html">Lookup task by ID</a><br/>
<a href="keywordForm.html">Lookup task by keyword</a><br/>
<a href="addTask.html">Add a task</a><br/> -->
	<section>
		<img id="logoImage" alt="Welcome to the 'Honey Do' household task manager. Logo features 'Honey*do' in a playful font, a smiling bee, and the tagline 'household task manager for busy bees'." src="honeyDoLogoWithTagline.png">

		<h4>Here all of the existing tasks, ordered by date required:</h4>
		<br><br>
		<jsp:include page="./task/results.jsp"></jsp:include>
		<br><br>
		<figcaption id="caption" for="logoImage"><a clicktracking=off href="https://www.vecteezy.com/free-vector/vector" target="_blank">Vector Bee by Vecteezy</a></figcaption>
	</section>

<jsp:include page="./bootstrapFoot.jsp"></jsp:include>
</body>
</html>