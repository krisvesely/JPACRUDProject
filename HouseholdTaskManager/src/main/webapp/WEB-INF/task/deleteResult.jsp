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
	<section>
		<c:choose>
			<c:when test="${deleted == true}">
				<p>Task deletion successful.</p>
			</c:when>
			<c:otherwise>
				<p>Task deletion unsuccessful.</p>
			</c:otherwise>
		</c:choose>
	</section>
<jsp:include page="../bootstrapFoot.jsp"></jsp:include>
</body>
</html>