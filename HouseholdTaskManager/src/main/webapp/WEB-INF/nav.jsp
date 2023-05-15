<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
</head>
 <nav class="navbar navbar-expand-lg sticky-top bg-body-tertiary">
 	<div class="container-fluid">
 	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    	<div class="collapse navbar-collapse" id="navbarSupportedContent">
    		<div class="d-flex justify-content-between">
			 	<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			 		
					<li class="nav-item"><div class="d-flex"><a class="nav-link active" href="home.do">Home</a></div></li>
				 		  
					<li class="nav-item">
						<form class="d-inline-flex" action="getTaskDataId.do" method="GET">
						    <input class="form-control me-2" type="number" name="idLookup" name="idLookup" placeholder="Lookup Task By ID"/> 
						    <input type="submit" value="Go" />
						</form>
					</li>
				
					<li class="nav-item">
						<form class="d-inline-flex" action="getTaskDataKeyword.do" method="GET">
							<input class="form-control me-2" type="text" id="keyword" name="keyword" placeholder="Lookup By Keyword"/> 
							<input type="submit" value="Go" />
						</form>
					</li>
						
					<li class="nav-item"><div class="d-flex"><a class="nav-link active" href="addTask.do">Add Task</a></div></li>
					
				</ul>
			</div>
		</div>
	</div>
</nav>
</html>