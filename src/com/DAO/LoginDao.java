package com.DAO;
import com.Bo.LoginBo;
import com.Vo.AdminLogin;


import java.util.ArrayList;
import java.util.List;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDao {
     static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
     static final String DB_URL = "jdbc:mysql://localhost/emr";
     static final String USER = "root";
     static final String PASS = "root";
     public AdminLogin LoginCheck(AdminLogin s)
     {
           Connection conn = null;
           PreparedStatement stmt = null;
           
           try
           {
                Class.forName(JDBC_DRIVER);
                conn = DriverManager.getConnection(DB_URL,USER,PASS);
                String sql = "SELECT UserId,Password from admin where UserId=? and Password=?";
                stmt=conn.prepareStatement(sql);
                stmt.setString(1,s.getUserId());
                stmt.setString(2,s.getPassword());
                ResultSet rs = stmt.executeQuery();
                if(rs.next())
                {
                	s.setStatus(1);
                }
                else
                {
                	s.setStatus(0);
                }
                rs.close();
                stmt.close();
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
                     if(stmt != null)
                           stmt.close();
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
           return s;
     }
}

