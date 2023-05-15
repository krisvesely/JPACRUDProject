<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Deletion Results</title>
<jsp:include page="../bootstrapHead.jsp"></jsp:include>
<link rel="stylesheet" href="styles.css">
</head>

<body>
	<header>
		<%@ include file="../nav.jsp"%>
	</header>
	<div class="container">
		<br>
		<c:choose>
			<c:when test="${deleted == true}">
				<h4>Task deletion successful.</h4>
			</c:when>
			<c:otherwise>
				<h4>Task deletion unsuccessful.</h4>
			</c:otherwise>
		</c:choose>
	</div>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>