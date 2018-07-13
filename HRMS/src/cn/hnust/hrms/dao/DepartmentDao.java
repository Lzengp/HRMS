package cn.hnust.hrms.dao;



import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.hnust.hrms.domain.Department;
import cn.itcast.jdbc.TxQueryRunner;

public class DepartmentDao {
	
	private QueryRunner qr =new TxQueryRunner();
	/**
	 * 添加部门信息
	 * @param form
	 */
	public void depadd(Department form) {
			try {
				String sql = "insert into department(did,dname,dmanager,dnumber,ddescription) values(?,?,?,?,?)";//sql模板
				Object[] params = {form.getDid(),form.getDname(),form.getDmanager(),
						form.getDnumber(),form.getDdescription()};//把表单信息存储数组中
				qr.update(sql,params);//使用update方法写入数据库
			}catch(SQLException e) {
				throw new RuntimeException(e);
				}
		}
	/**
	 * 查询所有部门信息
	 * @return
	 */
	public List<Department> findAll() {
		try {
		String sql = "select * from department";
		/*BeanListHandler 是可供DBUtils查询器使用的一个Handler类，它的作用是将查询结果转换为一个列表。
		列表中元素为查询结果所转换的JavaBean，Bean的类型为开发者所指定的Class。
		*/
		return qr.query(sql,new BeanListHandler<Department>(Department.class));
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	/**
	 * 按条件查询
	 */
	public List<Department> query(String dname) {
		/*
		 * 1.给出sql模板
		 * 2.给出参数
		 * 3.调用query方法，使用结果集处理器：BeanListHandler
		 */
		//给出一个sql语句前半部分，
		try {
		StringBuilder sql = new StringBuilder("select * from department where 1=1 ");//设置where 1=1，目的是为了用and链接子句
		//判断条件，向where增加子句
		//创建一个ArrayList，用来装载参数
		List<Object> params = new ArrayList<Object>();
		if(dname != null && !dname.trim().isEmpty()) {
			sql.append("and dname like ?");//增加子句
			params.add("%"+dname+"%");//	%替代一个或多个字符，模糊查询
		}
		
		//执行query
		return qr.query(sql.toString(), 
				new BeanListHandler<Department>(Department.class),
				params.toArray());
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	/**
	 * 删除部门,通过id删除
	 * @param did
	 */
	public void delete(String id) {
		try {
		String sql = "delete from department where id =?";//给出sql模板
		qr.update(sql, id);//把id给？
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
		
	}
	/**
	 * 修改部门
	 * @param dep
	 */
	public void depedit(Department dep) {
		try {
		String sql = "update department set dname=?, dmanager =?, "
				+ "dnumber=?,ddescription=? where did=?";
		Object[] params = {dep.getDname(),dep.getDmanager(),
				dep.getDnumber(),dep.getDdescription(),dep.getDid() };
		qr.update(sql,params);
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	/**
	 *  加载部门信息，用来修改
	 * @param did
	 * @return
	 */
	public Department load(String did) {
		try {
			String sql = "select * from department where did=?";
			return qr.query(sql,new BeanHandler<Department>(Department.class),did);
		}catch(SQLException e) {
			throw new RuntimeException(e);
			}
	}	
		
	/**
	 * 查询主键id
	 * @param did
	 */
	public void findId(String id) {
		try {
		String sql = "delete from department where id =?";//给出sql模板
		qr.update(sql, id);//把id给？
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
		
	}
	
	}


