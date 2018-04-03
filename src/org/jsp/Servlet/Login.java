package org.jsp.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsp.Dao.LoginDao;
import org.jsp.Pojo.User;




@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	  PrintWriter out=response.getWriter();
	  String name = request.getParameter("name");
	  String password = request.getParameter("password");
	  
	  User u= new User();
	  u.setName(name);
	  u.setPassword(password);
	  
	  LoginDao dao=new LoginDao();
	  boolean status=dao.validate(u);
	  try{		                                   //if(name.equals("admin") && password.equals("admin1234"))
		  if(status)
		  {
			out.print("Login-Successful");
		    HttpSession session =request.getSession();
			session.setAttribute("name", name);
			session.setAttribute("password", password);
		    response.sendRedirect("home.jsp");
		  }
		  else
		  {
			  out.print("Error Occured");
			  response.sendRedirect("login-error.jsp");
		  }
		  
	  }catch(Exception e){out.print(e);}
	 
   }
}
