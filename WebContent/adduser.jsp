<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="mystyle/layout.css">
</head>
<body>

	<div class="container">

		<header> <jsp:include page="header.jsp" /> </header>

		<nav> <jsp:include page="Admin_Menu.jsp" /> </nav>

		<article> <label>Name:</label> <input type="text"
			name="name" /> <br>
		<label>email:</label> <input type="text" name="email" /> <br>
		<label>password:</label> <input type="password" name="password" /> <br>
		</article>

		<footer><jsp:include page="footer.jsp" /></footer>

	</div>

</body>
</html>