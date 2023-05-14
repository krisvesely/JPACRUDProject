<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Household Task Manager</title>
</head>
<body>
<h1>Household Task Manager</h1>

<a href="idForm.html">Lookup task by ID</a><br/>
<a href="keywordForm.html">Lookup task by keyword</a><br/>
<a href="addTask.html">Add a task</a><br/>

${taskList}
</body>
</html>