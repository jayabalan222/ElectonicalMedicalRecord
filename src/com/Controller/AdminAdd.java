package com.Controller;

import java.io.IOException;
import com.Bo.AdminLoginBo;
import com.Vo.AdminRegister;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminAdd")
public class AdminAdd extends HttpServlet {
     private static final long serialVersionUID = 1L;
       
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          // TODO Auto-generated method stub
          AdminRegister obj = new AdminRegister();
          obj.setFirstName(request.getParameter("FirstName"));
          obj.setLastName(request.getParameter("LastName"));
          obj.setAge(Integer.parseInt(request.getParameter("Age")));
          obj.setGender(request.getParameter("Gender"));
          obj.setContactNumber(Long.parseLong(request.getParameter("Contact")));
          obj.setUserId(request.getParameter("UserId"));
          obj.setPassword(request.getParameter("Password"));
          AdminLoginBo AdminLoginBoObj=new AdminLoginBo();
          AdminRegister c=AdminLoginBoObj.LoginCheck(obj);
        //  System.out.println("hiiii"+obj.getContactNumber());
          if(c.getStatus() == 1)
          {
              response.sendRedirect("AdminLogin.jsp");
          }
          else
          {
              request.setAttribute("stat", "Please provide correct input...");
               request.getRequestDispatcher("AdminRegister.jsp").forward(request, response);
          }
     }

}

