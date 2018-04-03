<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
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
		
		<div class="logForm">
		<form action="Login" method="get">
		  <h1>Login Form</h1>
	      <label><b>Username</b></label><br>
	      <input type="text" placeholder="Enter Username" name="name" required>
		  <br>
	      <label><b>Password</b></label><br>
	      <input type="password" placeholder="Enter Password" name="password" required>
	      <br>
	      <br>
	      <input type="submit" value="Login"> 
	      <input type="reset" value="Reset">
	      </form>
	    </div>
		
		</article>


		<footer><jsp:include page="footer.jsp"/></footer>

	</div>

</body>
</html>
