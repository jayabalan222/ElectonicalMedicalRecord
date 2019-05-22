Loginbo.java:
package com.Bo;
import com.Dao.Logindao;
import com.Vo.Userdetails;
public class Loginbo {
    public Userdetails LoginCheck(Userdetails s) {
       Logindao LogindaoObj= new Logindao();
       return LogindaoObj.Logincheck(s);
    }
    
}
LoginServlet.java:
package com.Controller;
import  com.Vo.Userdetails;
import javax.servlet.http.HttpSession;
import com.Bo.Loginbo;
import com.Dao.Logindao;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
       private static final long serialVersionUID = 1L;

       protected void doGet(HttpServletRequest request, HttpServletResponse response)
                     throws ServletException, IOException {
              
              Userdetails obj=new Userdetails();
              obj.setemailid(request.getParameter("ename"));
              obj.setPassword(request.getParameter("pass"));
              Loginbo LoginBoObj =new Loginbo();
              Userdetails s=LoginBoObj.LoginCheck(obj);
              
              
              
              
           
              if(s.getStatus()==1) {
                     HttpSession session=request.getSession();
                     session.setAttribute("emailid",s.getemailid());
                     response.sendRedirect("Home.jsp");
              } else {
                     request.setAttribute("status", "Pl do ckeck..");
                     request.getRequestDispatcher("login.jsp").forward(request,response);
              }
              

}
}
Logindao.java:
package com.Dao;
import com.Bo.Loginbo;
import com.Vo.Userdetails;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Logindao {
     static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
     static final String DB_URL = "jdbc:mysql://localhost/vully";
     static final String USER = "root";
     static final String PASS = "root";
     public Userdetails Logincheck(Userdetails s)
     {
           Connection conn = null;
           PreparedStatement stmt = null;
           
           try
           {
                Class.forName(JDBC_DRIVER);
                conn = DriverManager.getConnection(DB_URL,USER,PASS);
               String sql = "SELECT emailid from userdetails where emailid=? and password=?";
                stmt=conn.prepareStatement(sql);
                stmt.setString(1,s.getemailid());
                stmt.setString(2,s.getPassword());
                ResultSet rs = stmt.executeQuery();
                if(rs.next())
                {
                     
                     
                     s.setStatus(1);
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

