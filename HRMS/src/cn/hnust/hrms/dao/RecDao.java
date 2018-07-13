package cn.hnust.hrms.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import cn.hnust.hrms.domain.Recruitment;
import cn.itcast.jdbc.TxQueryRunner;

public class RecDao {
	QueryRunner qr = new TxQueryRunner();

/**
 * 添加招聘人信息
 * @param form
 */
	public void recadd(Recruitment form) {
		try {
		String sql = "insert into rec(rname,rgender,age,rcellphone,diploma,description)"
				+ " values(?,?,?,?,?,?)";
		Object[] params = {form.getRname(),form.getRgender(),form.getAge(),form.getRcellphone(),
				form.getDiploma(),form.getDescription()};
		qr.update(sql,params);
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
/**
 * 查询
 * @param rname
 * @return
 */
	public List<Recruitment> query(String rname) {
		//给出一个sql语句前半部分，
		try {
		StringBuilder sql = new StringBuilder("select * from rec where 1=1 ");//设置where 1=1，目的是为了用and链接子句
		//判断条件，向where增加子句
		//创建一个ArrayList，用来装载参数
		List<Object> params = new ArrayList<Object>();
		if(rname != null && !rname.trim().isEmpty()) {
			sql.append("and rname like ?");//增加子句
			params.add("%"+rname+"%");//	%替代一个或多个字符，模糊查询
		}
		//执行query
		return qr.query(sql.toString(), 
				new BeanListHandler<Recruitment>(Recruitment.class),
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
			String sql = "delete from rec where id =?";//给出sql模板
			qr.update(sql, id);//把id给？
			}catch (SQLException e){
				throw new RuntimeException(e);
			}
			
		}
		/**
		 * 加载
		 * @param id
		 * @return
		 */
	public Recruitment load(int id) {
		
		try {
			String sql = "select * from rec where id=?";
			return qr.query(sql,new BeanHandler<Recruitment>(Recruitment.class),id);
		}catch(SQLException e) {
			throw new RuntimeException(e);
			}
	}
}
	
