<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

 <html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-US-Compatible" content="IE-edge">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="Progmo" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Exppires" content="Sat, 01,Dec 2017 00:00:00 GMT">
	
	
	<title>Task Manager | Home</title>

	<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	    		rel="stylesheet">
	<!--  
	<link href="static/css/bootstrap.min.css" rel="stylesheet">
	<link href="static/css/style.css" rel="stylesheet">
	-->

		<!--[if It IE 9]>
		<script src="static/js/html5shiv.min.js"></script>
		<script src="static/js/respond.min.js"></script>
		<![endif]-->
</head>

<body>	 
	<nav role="navigation" class="navbar navbar-inverse">
		<div class="">
			<a href="http://www.alomsoftwares.com" class="navbar-brand">AlomSoftware's</a>
		</div>
		<div class="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="new-task">New Task</a></li>
				<li><a href="all-tasks">All Tasks</a></li>	
			</ul>
		</div>
	</nav> 

	 <!--  <div role="navigation">
		 <div class="navbar navbar-inverse">
	 		<a href="/" class="navbar-brand">AlomSoftware</a>	
	 		<div class ="navbar-collapse collapse">
	 			<ul class="nav navbar-nav">
	 				<li><a href="new-task">New Task</a></li>
	 				<li><a href="all-tasks">All Tasks</a></li>	 			
	 			</ul>	 	
	 		</div>
	 	</div>
	 </div>-->	
	 <c:choose>
	 	<c:when test="${mode == 'MODE_HOME'}">
	 		 <div class="container" id="homeDiv">
	 			<div class="jumbotron text-center">
	 				<h3>Welcome to Task Manager</h3>
	 			</div>
	 		</div>
	 	</c:when>
	 	<c:when test="${mode == 'MODE_TASKS'}">
			 <div class="container text-center" id="taskDiv">
			 	 <h3>My Tasks</h3>
			 	 <br>
			 	 <div class="table-responsive">
			 	 	<table class="table table-striped table-bordered text-left">
			 	 		<thead>
			 	 			<tr>
			 	 				<th>Id</th>
			 	 				<th>Name</th>
			 	 				<th>Description</th>
			 	 				<th>Date Created</th>
			 	 				<th>Finished</th>
			 	 				<th></th>
			 	 				<th></th>
			 	 			</tr>
			 	 		</thead>
			 	 		<tbody>
			 	 			<c:forEach var="task" items="${tasks}">
			 	 				<tr>
			 	 					<td>${task.id}</td>
			 	 					<td>${task.name}</td>
			 	 					<td>${task.description}</td>
			 	 					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${task.dateCreated}"/></td>
			 	 					<td>${task.finished}</td>
			 	 					<td><a href="update-task?id=${task.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
			 	 					<td><a href="delete-task?id=${task.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
			 	 				</tr>
			 	 			</c:forEach>
			 	 		</tbody>	 	 		
			 	 	</table>	 	 	
			 	 </div>
			 </div>
	 	</c:when>
	 	<c:when test="${mode == 'MODE_NEW' ||mode == 'MODE_UPDATE'}">
	 	
				<div class="container text-center">
					<h3>Manage Task</h3>
					<br>
					<form class="form-horizontal" method="post" action="save-task">
						<input type="hidden" name="id" value="${task.id}"/>
						<div class="form-group">
							<label class="control-label col-md-3">Name</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="name" value="${task.name}"/>
							</div>				
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Description</label>
							<div class="col-md-7">
								<input type="text" class="form-control" name="description" value="${task.description}"/>
							</div>				
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-3">Finished</label>
							<div class="col-md-7">
								<input type="radio" class="col-sm-1" name="finished" value="true"/>
								<div class="col-sm-1">Yes</div>
								<input type="radio" class="col-sm-1" name="finished" value="false" checked/>
								<div class="col-sm-1">No</div>
							</div>				
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary" value="save"/>
						</div>
					</form>
				</div>
	 	</c:when>	 	 
	 </c:choose>
	
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	 	 
	<!--<script src="static/js/jquery-3.2.1"></script>
	<script src="static/js/bootstrap.min.js"></script>
	-->
	 
</body>
</html>