<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>School Management System</title>
<link rel="stylesheet" type="text/css" href="mystyle/layout.css">
</head>
<body>

	<div class="container">

		<header>
		<jsp:include page="header.jsp"/>
		</header>

		<nav>
			<jsp:include page="Index_Menu.jsp"/>
		 </nav>

		<article>
		<h1>School Management System</h1>
		<p>A School Management system is application for a school that can be used by staff of the school only.
		   It can be run on intranet. There are two users of the system Guest and Admin.
		   The admin can add student details as well as view student details.<br>
		   Users of the System<br>
			1. Guest<br>
			2. Admin<br>
		</p>
		<P>Login Here....</P>
		<a href="login.jsp">Login</a>
		</article>


		<footer><jsp:include page="footer.jsp"/></footer>

	</div>

</body>
</html>