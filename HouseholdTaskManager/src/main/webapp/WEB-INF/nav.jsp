<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

</head>
 <nav id="navbar">
 	<p>
 		<ul class="nav-list">
 		
	 		<li><a href="home.do">Home</a></li>
	 		  
			<li><form action="getTaskDataId.do" method="GET">
			    <label for="idLookup">Lookup Task By ID:</label>
			    <input type="number" name="idLookup" name="idLookup"/> 
			    <input type="submit" value="Go" />
			</form></li>
	
			<li><form action="getTaskDataKeyword.do" method="GET">
				<label for="keyword">Lookup Task By Keyword:</label>
				<input type="text" id="keyword" name="keyword" /> 
				<input type="submit" value="Go" />
			<li></form></li>
			
			<li><a href="addTask.do">Add Task</a></li>
		
	</ul>
	</p>
</nav>
</html>