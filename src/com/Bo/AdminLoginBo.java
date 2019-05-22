package com.Bo;
import com.Vo.AdminRegister;
import com.DAO.AddAdminDao;
public class AdminLoginBo {
	public AdminRegister LoginCheck(AdminRegister c) 
	{
		AddAdminDao LoginDaoObj=new  AddAdminDao();
	//	System.out.println("hello");
		return LoginDaoObj.LoginCheck(c);
	}
	

}
