package cn.hnust.hrms.domain;

import java.io.Serializable;

public class Login implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int id;//id
	private String user;//用户名
	private String pwd;//密码
	private String sgender;//性别
	private String scellphone;//电话
	private String semail;//邮箱
	
	
	
	
	public String getSgender() {
		return sgender;
	}
	public void setSgender(String sgender) {
		this.sgender = sgender;
	}
	public String getScellphone() {
		return scellphone;
	}
	public void setScellphone(String scellphone) {
		this.scellphone = scellphone;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
