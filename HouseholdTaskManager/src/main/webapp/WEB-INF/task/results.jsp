<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task Results</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
<link rel="stylesheet" href="styles.css">
</head>
<body>
	<header>
		<%@ include file="../nav.jsp"%>
	</header>
<div class="container">
	<c:choose>
		<c:when test="${not empty taskList}">
			<h4><em>Here are the tasks containing the keyword '${keyword}'.</em></h4>
			<c:forEach var="task" items="${taskList}">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th colspan="4">Task: ${task.name}</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="2">Category: ${task.category}</td>
								<td colspan="2">ID: ${task.id}</td>
							</tr>
							<tr>
								<td colspan="2">Date Last Completed:<br>
									<c:choose> 
										<c:when test="${not empty task.dateLastCompleted}">
											${task.dateLastCompleted}
										</c:when>
										<c:otherwise>none recorded</c:otherwise>
									</c:choose>
								</td>
								<td colspan="2">Date Required:<br>
									<c:choose> 
										<c:when test="${not empty task.dateRequired}">
											${task.dateRequired}
										</c:when>
										<c:otherwise>none recorded</c:otherwise>
									</c:choose>
								</td>
							</tr>
							<tr>
								<td colspan="2">Frequency:  
									<c:choose> 
										<c:when test="${not empty task.frequency}">
											${task.frequency}
										</c:when>
										<c:otherwise>none recorded</c:otherwise>
									</c:choose>
								</td>
								<td colspan="2">Cost: $${task.cost}0</td>
							</tr>
							<tr>
								<td colspan="4">Notes: 
									<c:choose> 
										<c:when test="${not empty task.notes}">
											${task.notes}
										</c:when>
										<c:otherwise>none recorded</c:otherwise>
									</c:choose>
								</td>
							</tr>
							<tr>
								<td colspan="2"><a href="editTaskForm.do?taskId=${task.id}">Edit Task Details</a></td>
								<td colspan="2"><a href="deleteTask.do?taskId=${task.id}">Delete Task</a></td>
							</tr>
						</tbody>
					</table>
					<br>
			</c:forEach>
		</c:when>
		<c:otherwise>No tasks found.</c:otherwise>
	</c:choose>
</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>