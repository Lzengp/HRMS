package cn.hnust.hrms.service;

import java.util.List;

import cn.hnust.hrms.dao.LoginDao;
import cn.hnust.hrms.domain.Login;

public class LoginService {
	
	LoginDao lDao = new LoginDao();
	/**
	 * 用户密码验证
	 * @param user
	 * @return
	 */
	public List<Login> query(String user) {
		return lDao.query(user);
	}
	/**
	 * 修改密码
	 * @param first
	 */
	public void edit(String first,int id) {
		lDao.edit(first,id);
	}
	/**
	 * 添加管理员
	 * @param form
	 */
	public void sysadd(Login form) {
		lDao.sysadd(form);
		
	}
	/**
	 * 删除
	 * @param id
	 */
	public void delete(String id) {
		lDao.delete(id);
		
	}
	/**
	 * 查询
	 * @param user
	 * @return
	 */
	public List<Login> sysquery(String user) {

		return lDao.sysquery(user);
	}

}
