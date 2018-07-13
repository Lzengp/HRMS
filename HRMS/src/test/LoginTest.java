package test;

import org.junit.Test;

import cn.hnust.hrms.dao.LoginDao;
import cn.hnust.hrms.domain.Login;

public class LoginTest {
	
	@Test
	public void addfun() {
		Login login = new Login();
		LoginDao lDao =new LoginDao();
		
		login.setUser("hhhh");
		login.setScellphone("123340");
		login.setSemail("11@qq.com");
		login.setSgender("男");
		login.setPwd("123");
		
		lDao.sysadd(login);
				
	}

}
