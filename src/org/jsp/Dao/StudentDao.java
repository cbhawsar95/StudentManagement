package org.jsp.Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import org.jsp.Db.DBUtil;
import org.jsp.Pojo.Student;


public class StudentDao {
	
	 public static int add(Student s){  
	        int status=0;  
	        try{  
	        	DBUtil db=new DBUtil();  
	           String sql="insert into student(name,age,classname,rollno,address) values (?,?,?,?,?)";  
	           PreparedStatement pst=db.createPST(sql);  
	           
	            pst.setString(1,s.getName());
	            pst.setInt(2,s.getAge());
	            pst.setString(3,s.getClassname());
	            pst.setInt(4,s.getRollno()); 
	            pst.setString(5,s.getAddress());
	            status=pst.executeUpdate();  
	   
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return status;  
	    }  
		
	 public static List<Student> getAllStudent(){

			List<Student> list=new ArrayList<Student>();
			
			try{
//				Connection con=getConnection();
				DBUtil db= new DBUtil();
				String sql="select * from student";
				//PreparedStatement pst=con.prepareStatement(sql);
				  PreparedStatement pst= db.createPST(sql);
				  ResultSet rs=pst.executeQuery();
				while(rs.next()){
					Student s=new Student();
					s.setStudentId(rs.getInt("studentid"));
					s.setName(rs.getString("name"));
					s.setAge(Integer.parseInt(rs.getString("age")));
					s.setClassname(rs.getString("classname"));
					s.setRollno(Integer.parseInt(rs.getString("rollno")));
					s.setAddress(rs.getString("address"));
					list.add(s);
				}
			}catch(Exception e){System.out.println(e);}
			return list;
		}
}