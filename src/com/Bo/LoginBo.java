package com.Bo;
import com.DAO.LoginDao;
import com.Vo.AdminLogin;
public class LoginBo {
    public AdminLogin LoginCheck(AdminLogin s) {
       LoginDao LoginDaoObj= new LoginDao();
       return LoginDaoObj.LoginCheck(s);
    }
    
}
