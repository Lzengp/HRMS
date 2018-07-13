package cn.hnust.hrms.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.hnust.hrms.domain.Login;
import cn.itcast.jdbc.TxQueryRunner;

public class LoginDao {
	
	private QueryRunner qr = new TxQueryRunner();
	/**
	 * 查询用户名和密码
	 */
	public List<Login> query(String user) {
			try {
			String sql = "select * from login  where user=?";
			/*BeanListHandler 是可供DBUtils查询器使用的一个Handler类，它的作用是将查询结果转换为一个列表。
			列表中元素为查询结果所转换的JavaBean，Bean的类型为开发者所指定的Class。
			*/
			return qr.query(sql,new BeanListHandler<Login>(Login.class),user);
			}catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
	/**
	 * 修改密码，通过id来修改
	 * @param first
	 */
	public void edit(String first ,int id) {
			try {
			String sql = "update login set pwd=? where id=? ";
			qr.update(sql,first,id);
			}catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
	/**
	 * 添加管理员
	 * @param form
	 */
	public void sysadd(Login form) {
		try {
		String sql = "insert into login(user,pwd,sgender,scellphone,semail)"
				+ "values(?,?,?,?,?)";
		Object[] params = {form.getUser(),form.getPwd(),form.getSgender(),
				form.getScellphone(),form.getSemail()};
		qr.update(sql,params);
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	/**
	 * 删除
	 * @param id
	 */
	public void delete(String id) {
		try {
			String sql = "delete from login where id =?";//给出sql模板
			qr.update(sql, id);//把id给？
			}catch (SQLException e){
				throw new RuntimeException(e);
			}
		
	}
	public List<Login> sysquery(String user) {
	//给出一个sql语句前半部分，
	try {
	StringBuilder sql = new StringBuilder("select * from login where 1=1 ");//设置where 1=1，目的是为了用and链接子句
	//判断条件，向where增加子句
	//创建一个ArrayList，用来装载参数
	List<Object> params = new ArrayList<Object>();
	if(user != null && !user.trim().isEmpty()) {
		sql.append("and user like ?");//增加子句
		params.add("%"+user+"%");//	%替代一个或多个字符，模糊查询
	}
	//执行query
	return qr.query(sql.toString(), 
			new BeanListHandler<Login>(Login.class),
			params.toArray());
	}catch(SQLException e) {
		throw new RuntimeException(e);
	}
}

}
	

	
