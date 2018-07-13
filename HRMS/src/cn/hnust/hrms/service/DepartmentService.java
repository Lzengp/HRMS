package cn.hnust.hrms.service;

import java.util.List;

import cn.hnust.hrms.dao.DepartmentDao;
import cn.hnust.hrms.domain.Department;

public class DepartmentService {
	
	DepartmentDao dDao = new DepartmentDao();
/**
 * 添加部门信息
 * @param form
 */
	public void depadd(Department form) {
		dDao.depadd(form);
		
	}

	/**
	 * 查询所有部门
	 */
	public List<Department> findAll(){
		return dDao.findAll();
		
		
	}
	/**
	 * 按条件查询
	 * @param dep
	 * @return
	 */
	public List<Department> query(String dep) {
		return dDao.query(dep);
	}
	/**
	 * 删除部门
	 * @param did
	 */
	public void delete(String id) {
		dDao.delete(id);
		
	}
	/**
	 * 修改部门
	 * @param dep
	 */
	public void depedit(Department dep) {
		dDao.depedit(dep);
		
	}
	/**
	 * 加载部门信息，用来修改
	 * @param did
	 * @return
	 */
	public Department load(String did) {
		return dDao.load(did);
	}



}
