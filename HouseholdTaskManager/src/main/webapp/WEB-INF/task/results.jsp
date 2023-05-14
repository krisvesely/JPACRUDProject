<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task Results</title>
</head>
<body>
<c:choose>
	<c:when test="${not empty taskList}">
		<c:forEach var="task" items="${taskList}">
				<table>
					<thead>
						<tr>
							<th>Task: ${task.name}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="3">Category: ${task.category}</td>
							<td colspan="1">ID: ${task.id}</td>
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
							<td colspan="3">Frequency:  
								<c:choose> 
									<c:when test="${not empty task.frequency}">
										${task.frequency}
									</c:when>
									<c:otherwise>none recorded</c:otherwise>
								</c:choose>
							</td>
							<td colspan="1">Cost: $${task.cost}0</td>
						</tr>
						<tr>
							<td>Notes: 
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
		</c:forEach>
	</c:when>
	<c:otherwise>No tasks found.</c:otherwise>
</c:choose>
</body>
</html>