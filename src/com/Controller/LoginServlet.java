package com.Controller;

import com.Vo.AdminLogin;
import javax.servlet.http.HttpSession;
import com.Bo.LoginBo;
import com.DAO.LoginDao;
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

		AdminLogin obj = new AdminLogin();
		obj.setUserId(request.getParameter("UserId"));
		obj.setPassword(request.getParameter("Password"));
		LoginBo LoginBoObj = new LoginBo();
		AdminLogin s = LoginBoObj.LoginCheck(obj);
		if (s.getStatus() == 1) {
			/*HttpSession session = request.getSession();
			session.setAttribute("UserId", s.getUserId());*/
			response.sendRedirect("Admin.jsp");
		} else {
			request.setAttribute("status", "Pl do ckeck u r user id and password ..");
			request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
		}

	}
}
