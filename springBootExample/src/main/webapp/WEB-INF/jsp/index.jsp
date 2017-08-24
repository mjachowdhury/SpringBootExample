<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Progmo" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Exppires" content="Sat, 01,Dec 2017 00:00:00 GMT">

<title>Spring Boot Task Manager | Home</title>

<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">



<script src="static/js/html5shiv.min.js"></script>
<script src="static/js/respond.min.js"></script>
</head>
<body>
	 
	 <div role="navigation">
	 <div class="navbar navbar-inverse">
	 	<a href="#" class="navbar-brand">AlomSoftware</a>
	 	<div class ="navbar-collapse collapse">
	 		<ul class="nav navbar-nav">
	 			<li><a href="#">Manage Task</a></li>
	 			<li><a href="#">All Tasks</a></li>	 			
	 		</ul>	 	
	 	</div>
	 </div>	 
	 </div>
	 <div class="container invisible-at-first" id="homeDiv">
	 	<div class="jumbotron text-center">
	 		<h3>Welcome to Task Manager</h3>
	 	</div>
	 </div>
	 <div class="container text-center invisible-at-first" id="taskDiv">
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
	 	 			</tr>
	 	 		</thead>
	 	 		<tbody>
	 	 			<c:forEach var="task" items="${tasks}">
	 	 				<tr>
	 	 					<td>${task.id}</td>
	 	 					<td>${task.name}</td>
	 	 					<td>${task.description}</td>
	 	 					<td>${task.dateCreated}</td>
	 	 					<td>${task.finished}</td>
	 	 				</tr>
	 	 			</c:forEach>
	 	 		</tbody>
	 	 		
	 	 	</table>
	 	 	
	 	 </div>
	 </div>
	<div class="container text-center">
		<h3>Manage Task</h3>
		<form class="form-horizontal" method="post" action="save-task">
			<input type="hidden" name="id" value="${task.id}"/>
			<div class="form-group">
				<label class="control-label col-md-3">Name</label>
				<div class="col-md-5">
					<input type="text" class="form-control" name="name" value="${task.name}"/>
				</div>
				
			</div>
		</form>
	</div>
	<script src="static/js/jquery-3.2.1"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>