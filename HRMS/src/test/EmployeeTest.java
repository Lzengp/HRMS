package test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.junit.Test;
import cn.hnust.hrms.dao.EmployeeDao;
import cn.hnust.hrms.domain.Employee;

public class EmployeeTest {
	
	EmployeeDao empDao =new EmployeeDao();
	Employee emp = new Employee();
	@Test
	public void addfun() throws ParseException {
		String date = "2010-1-2";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date newDate = sdf.parse(date);
		
		emp.setEname("龙伟");
		emp.setEgender("男");
		emp.setEbrithday(newDate);
		emp.setEaddress("长沙");
		emp.setEsalary(20);
		emp.setEcellphone("1505050212");
		emp.setEtime(newDate);
		emp.setDepartment("renrenr");
		empDao.empadd(emp);
		
	}
	@Test
	public void findfun(){
		List<Employee> empy = empDao.findAll();
		System.out.println(empDao.findAll().size());
		 for (Employee login : empy) {
			 login.getDid();
			 System.out.println(login.getDid());
		 }
	}
	
	@Test
	public void findAll() {

		List<Employee> eList = empDao.findAll();
 
		   for (Employee emp : eList) {
			   
			  String u = emp.getEname();
			  System.out.println(u);
			 
		   } 
	}
	
	
}
