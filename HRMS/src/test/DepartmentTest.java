package test;

import org.junit.Test;

import cn.hnust.hrms.dao.DepartmentDao;
import cn.hnust.hrms.domain.Department;

public class DepartmentTest {
	
	DepartmentDao dpDao = new DepartmentDao();
	Department dp = new Department();
	
	@Test
	public void addfun() {
		
		dp.setId(0);
		dp.setDname("龙威");
		dp.setDmanager("龙纹");
		dp.setDnumber(5);
		dp.setDid("A001");
		dp.setDdescription("你好你好");
		dpDao.depadd(dp);
	}
	
	@Test
	public void queryfun() {
		
		System.out.println(dpDao.findAll().size());
	}
	
	@Test 
	public void deletefun() {
		
		dpDao.delete("A001");
	}

}
