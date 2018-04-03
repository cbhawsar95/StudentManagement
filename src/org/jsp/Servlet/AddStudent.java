package org.jsp.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.Dao.StudentDao;
import org.jsp.Pojo.Student;

/**
 * Servlet implementation class AddStudent
 */
@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();  
        
        String name=request.getParameter("name"); 
        int age = Integer.parseInt(request.getParameter("age"));
        String classname=request.getParameter("classname");  
        int rollno=Integer.parseInt(request.getParameter("rollno"));
        String address=request.getParameter("address");
          
        Student s=new Student();  
        s.setName(name);  
        s.setAge(age);  
        s.setClassname(classname);  
        s.setRollno(rollno);
        s.setAddress(address);
          
        int status=StudentDao.add(s);  
        if(status>0){  
            out.print("<p>Record saved successfully!</p>");  
            response.sendRedirect("home.jsp");  
        }else{  
            out.println("Sorry! unable to save record");  
            response.sendRedirect("addStudent.jsp");
        }  
          
        out.close();  
    }  
		}

