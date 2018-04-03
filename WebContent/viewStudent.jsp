<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">

		<header>
		<jsp:include page="header.jsp"/>
		</header>

		<div id="dropdown">
		<jsp:include page="dropdown.jsp"/>
		</div>

		<nav>
			<jsp:include page="Index_Menu.jsp"/>
		 </nav>

		<article>
		
		<h1>Welcome ${name}</h1>
		<%@ page import="org.jsp.Dao.StudentDao, org.jsp.Pojo.Student,java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<h1>User List</h1>
		
		<%
		List<Student> list=StudentDao.getAllStudent();
		request.setAttribute("list",list);
		%>
		<table>
		<tr>
		<th>Id</th> <th>Name</th> <th>Age</th> <th>Class</th>  
		<th>Rooll No</th> <th>Address</th ><th>Edit</th> <th>Delete</th></tr>  
		
		<c:forEach items="${list}" var="s">
		  
		<tr><td>${s.getStudentId()}</td> <td>${s.getName()}</td> <td>${s.getAge()}</td>  
		<td>${s.getClassname()}</td> <td>${s.getRollno()}</td> <td>${s.getAddress()}</td>  
		
		</c:forEach>  
		</table>  
		
		</article>


		<footer><jsp:include page="footer.jsp"/></footer>

	</div>


</body>
</html>