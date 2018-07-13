package cn.hnust.hrms.service;

import java.util.List;

import cn.hnust.hrms.dao.EmployeeDao;
import cn.hnust.hrms.domain.Employee;

public class EmployeeService {
	EmployeeDao empDao = new EmployeeDao();

/**
 * 添加员工信息
 * @param form
 */
	public void empadd(Employee form) {
		empDao.empadd(form);
		
	}
	/**
	 * 查询所有员工信息
	 */

  public List<Employee> findAll() {
	
	return empDao.findAll();
}
  /**
   * 搜索员工
   * @param ename
   * @return
   */
	public List<Employee> query(String ename) {
	
		return empDao.query(ename);
	}
	/**
	 * 删除员工
	 * @param id
	 */
	public void delete(String id) {
		
		empDao.delete(id);
	}
	/**
	 * 加载用户信息
	 * @param id
	 * @return
	 */
	public Employee load(int id) {

		return empDao.load(id);
	}
	/**
	 * 修改用户信息
	 * @param emp
	 */
	public void edit(Employee emp) {
		
		empDao.edit(emp);
		
	}
	
	

}
