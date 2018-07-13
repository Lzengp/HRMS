package cn.hnust.hrms.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import cn.hnust.hrms.domain.Train;
import cn.itcast.jdbc.TxQueryRunner;

public class TrainDao {
	
	QueryRunner  qr = new TxQueryRunner();
 
	/**
	 * 添加培训
	 * @param form
	 */
	public void traadd(Train form) {
		
		try {
		String sql = "insert into train(tname,tcellphone,taddress,tperson,ttime,description)"
				+ " values(?,?,?,?,?,?)";
		Object[] pramas = {form.getTname(),form.getTcellphone(),form.getTaddress(),
				form.getTperson(),form.getTtime(),form.getDescription()};
		qr.update(sql,pramas);
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	/**
	 * 搜索(通过负责人的名字查询)
	 * @param rname
	 * @return
	 */
	/**
	 * 按条件查询，如果没有条件就查询所有
	 */
	public List<Train> query(String tname) {
		//给出一个sql语句前半部分，
		try {
		StringBuilder sql = new StringBuilder("select * from train where 1=1 ");//设置where 1=1，目的是为了用and链接子句
		//判断条件，向where增加子句
		//创建一个ArrayList，用来装载参数
		List<Object> params = new ArrayList<Object>();
		if(tname != null && !tname.trim().isEmpty()) {
			sql.append("and tname like ?");//增加子句
			params.add("%"+tname+"%");//	%替代一个或多个字符，模糊查询
		}
		//执行query
		return qr.query(sql.toString(), 
				new BeanListHandler<Train>(Train.class),
				params.toArray());
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	/**
	 * 删除培训信息,通过id删除
	 * @param id
	 */
	public void delete(String id) {
		try {
		String sql = "delete from train where id =?";//给出sql模板
		qr.update(sql, id);//把id给？
		}catch (SQLException e){
			throw new RuntimeException(e);
		}
	}

}
