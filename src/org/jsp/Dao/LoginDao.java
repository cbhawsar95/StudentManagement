package org.jsp.Dao;

import java.sql.*;

import org.jsp.Db.DBUtil;
import org.jsp.Pojo.User;


public class LoginDao {
	
public static boolean validate(User u){
	boolean status =false;
	try{  
		DBUtil db=new DBUtil();
	String sql= "select * from user where name=? and password=?";  
	PreparedStatement pst=db.createPST(sql);
	pst.setString(1,u.getName());
	pst.setString(2,u.getPassword());
	ResultSet rs=pst.executeQuery();
	while(rs.next()){
		return true;
	}
}catch(Exception e){System.out.println(e);	}
return status;
}
}