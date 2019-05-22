package com.DAO;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.Vo.AdminRegister;
//import com.Bo.AdminLoginBo;
//import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;
public class AddAdminDao {
     static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
     static final String DB_URL = "jdbc:mysql://localhost/emr";
     static final String USER = "root";
     static final String PASS = "root";
     public AdminRegister LoginCheck(AdminRegister c)
     {
    	// 
          Connection conn = null;
          CallableStatement stmt1 = null;
         
          try
          {
        	  
              Class.forName(JDBC_DRIVER);
              conn = DriverManager.getConnection(DB_URL,USER,PASS);
              
             // String sql1 = "insert into admin(FirstName,LastName,Age,Gender,ContactNumber,UserId,password)values(?,?,?,?,?,?,?)";
              stmt1 = conn.prepareCall("{call NewUser(?,?,?,?,?,?,?)}");
             // System.out.println("hiiiii");
              stmt1.setString(1, c.getFirstName());
              stmt1.setString(2, c.getLastName());
              stmt1.setInt(3, c.getAge());
              stmt1.setString(4, c.getGender());
              stmt1.setLong(5, c.getContactNumber());
              stmt1.setString(6, c.getUserId());
              stmt1.setString(7, c.getPassword());
             // System.out.println("hiiiiii");
              stmt1.execute();
              c.setStatus(1);
              
              stmt1.close();
              conn.close();
          }
          catch(SQLException se)
          {
              se.printStackTrace();
          }
          catch(Exception e)
          {
              e.printStackTrace();
          }
          finally
          {
              try
              {
                   if(stmt1 != null)
                        stmt1.close();
                 
              }
              catch(SQLException se2)
              {
                   
              }
              try
              {
                   if(conn != null)
                   {
                        conn.close();
                   }
              }
              catch(SQLException se)
              {
                   se.printStackTrace();
              }
          }
     
          return c;
     }
}

