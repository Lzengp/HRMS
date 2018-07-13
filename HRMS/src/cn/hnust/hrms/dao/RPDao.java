package cn.hnust.hrms.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.hnust.hrms.domain.Rewards;
import cn.itcast.jdbc.TxQueryRunner;

public class RPDao {
	
	QueryRunner qr  =  new  TxQueryRunner();
/**
 * 添加奖惩信息
 * @param form
 */
	public void rpadd(Rewards form) {
		
		try {
		String sql = "insert into rewards(name,rmoney,rdate,rdescription,"
				+ "pmoney,pdate,pdescription) values(?,?,?,?,?,?,?)";
		Object[] params = { form.getName(),form.getRmoney(),form.getRdate(),form.getRdescription(),
				form.getPmoney(),form.getPdate(),form.getPdescription()};//把需要填入问号的信息存入数组里面
			qr.update(sql,params);//调用TxQuerRunner方法，
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
	/**
	 * 查询
	 * @param name
	 * @return
	 */
public List<Rewards> query(String name) {
	
	try {
		StringBuilder sql = new StringBuilder("select * from rewards where 1=1 ");//设置where 1=1，目的是为了用and链接子句
		//判断条件，向where增加子句
		//创建一个ArrayList，用来装载参数
		List<Object> params = new ArrayList<Object>();
		if(name != null && !name.trim().isEmpty()) {
			sql.append("and name like ?");//增加子句
			params.add("%"+name+"%");//	%替代一个或多个字符，模糊查询
		}
		//执行query
		return qr.query(sql.toString(), 
				new BeanListHandler<Rewards>(Rewards.class),
				params.toArray());
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
			String sql = "delete from rewards where id =?";//给出sql模板
			qr.update(sql, id);//把id给？
			}catch (SQLException e){
				throw new RuntimeException(e);
			}
		}
		
	}


