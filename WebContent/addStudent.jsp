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
		<a href="viewStudent.jsp">View All Records</a>
<h1>Add New Student </h1>
<form action="AddStudent"  method="get">
<table>
<tr><td>Name</td> <td><input type="text" name="name"></td></tr>
<tr><td>Age</td> <td><input type="text" name="age"></td></tr>
<tr><td>Class</td>
  <td><select name="classname">
  <option >10th</option>
  <option >11th</option>
  <option >12th</option>
  <option >Diploma</option>
  <option >BE</option>
  <option >B.tech</option>
  <option >M.tech</option>
   </select></td></tr>
<tr><td>Roll No</td> <td><input type="text" name="rollno"></td></tr>  
<tr><td>Address</td> <td><input type="text" name="address"></td></tr>  
  <tr><td><input type="submit" value="Add User"></td></tr>
  </table>
  </form>
  </article>


		<footer><jsp:include page="footer.jsp"/></footer>

	</div>

</body>
</html>