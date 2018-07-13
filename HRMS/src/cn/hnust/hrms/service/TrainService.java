package cn.hnust.hrms.service;

import java.util.List;

import cn.hnust.hrms.dao.TrainDao;
import cn.hnust.hrms.domain.Train;

public class TrainService {
	
	TrainDao tDao = new TrainDao();
/**
 * 添加培训
 * @param form
 */
	public void traadd(Train form) {
		tDao.traadd(form);
		
	}
	/**
	 * 搜索
	 * @param rname
	 * @return
	 */
	public List<Train> query(String tname) {
		
		return tDao.query(tname);
	}
	/**
	 * 删除
	 * @param id
	 */
	public void delete(String id) {
		tDao.delete(id);
		
	}

}
