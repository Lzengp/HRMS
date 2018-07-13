package cn.hnust.hrms.service;

import java.util.List;

import cn.hnust.hrms.dao.RPDao;
import cn.hnust.hrms.domain.Rewards;

public class RPService {
	
	RPDao rpDao = new RPDao();
/**
 * 添加奖惩信息
 * @param form
 */
	public void rpadd(Rewards form) {
		rpDao.rpadd(form);
		
	}
	/**
	 * 查询
	 * @param name
	 * @return
	 */
	public List<Rewards> query(String name) {

		return rpDao.query(name);
}
	/**
	 * 删除
	 * @param id
	 */
	public void delete(String id) {
		rpDao.delete(id);
		
	}
}
