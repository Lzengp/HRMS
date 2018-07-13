package cn.hnust.hrms.service;

import java.util.List;

import cn.hnust.hrms.dao.RecDao;
import cn.hnust.hrms.domain.Recruitment;

public class RecService {
	RecDao recDao = new RecDao();
/**
 * 添加招聘人信息
 * @param form
 */
	public void recadd(Recruitment form) {
		recDao.recadd(form);
		
	}
	/**
	 * 查询
	 * @param rname
	 * @return
	 */
public List<Recruitment> query(String rname) {
	
	return recDao.query(rname);
}
/**
 * 删除
 * @param id
 */
	public void delete(String id) {
		recDao.delete(id);
		
	}
	/**
	 * 加载
	 * @param id
	 * @return
	 */
	public Recruitment load(int id) {
		return  recDao.load(id);
		
	}

}
