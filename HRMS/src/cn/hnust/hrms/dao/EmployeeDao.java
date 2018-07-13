package cn.hnust.hrms.dao;


import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import cn.hnust.hrms.domain.Employee;
import cn.itcast.jdbc.TxQueryRunner;

public class EmployeeDao {
	
	
	private QueryRunner qr =new TxQueryRunner();
	/**
	 * 添加员工信息
	 * @param form
	 */
	public void empadd(Employee form) {
			try {
					
				//存入外键did，不直接存储部门名称
				String sql = "insert into employee(ename,egender,ebrithday,esalary,eaddress,etime,ecellphone,department) "
						+ "values(?,?,?,?,?,?,?,?)";//sql模板
				Object[] params = {form.getEname(),form.getEgender(),form.getEbrithday(),
						form.getEsalary(),form.getEaddress(),form.getEtime(),
						form.getEcellphone(),form.getDepartment()};//把表单信息存储数组中
				qr.update(sql,params);//使用update方法写入数据库
			}catch(SQLException e) {
				throw new RuntimeException(e);
				}
		}
	/**
	 * 查询所有所有员工信息
	 * @return
	 */
	public List<Employee> findAll() {
		try {
		String sql = "select * from employee";
//		String dsql ="SELECT d.dname "
//				+ "FROM employee e LEFT OUTER JOIN department d " 
//				+"ON e.did=d.id;";//左外连接，通过员工表的外键是部门表的主键查询部门名称
		return qr.query(sql,new BeanListHandler<Employee>(Employee.class));
		}catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * 按条件查询，如果没有条件就查询所有
	 */
	public List<Employee> query(String ename) {
		/*
		 * 1.给出sql模板
		 * 2.给出参数
		 * 3.调用query方法，使用结果集处理器：BeanListHandler
		 */
		//给出一个sql语句前半部分，
		try {
		StringBuilder sql = new StringBuilder("select * from employee where 1=1 ");//设置where 1=1，目的是为了用and链接子句
		//判断条件，向where增加子句
		//创建一个ArrayList，用来装载参数
		List<Object> params = new ArrayList<Object>();
		if(ename != null && !ename.trim().isEmpty()) {
			sql.append("and ename like ?");//增加子句
			params.add("%"+ename+"%");//	%替代一个或多个字符，模糊查询
		}
		
		//执行query
		return qr.query(sql.toString(), 
				new BeanListHandler<Employee>(Employee.class),
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
		String sql = "delete from employee where id =?";//给出sql模板
		qr.update(sql, id);//把id给？
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}
	/**
	 * 修改部门
	 * @param dep
	 */
	public void edit(Employee emp) {
		try {
		String sql = "update employee set ename=?, esalary =?, "
				+ "eaddress=?,ecellphone=? ,department=? where id=?";
		Object[] params = {emp.getEname(),emp.getEsalary(),
				emp.getEaddress(),emp.getEcellphone(),emp.getDepartment(),emp.getId() };
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
	public Employee load(int id) {
		try {
			String sql = "select * from employee where id=?";
			return qr.query(sql,new BeanHandler<Employee>(Employee.class),id);
		}catch(SQLException e) {
			throw new RuntimeException(e);
			}
	}	
		
	
	}
