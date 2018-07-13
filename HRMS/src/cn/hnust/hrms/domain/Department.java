package cn.hnust.hrms.domain;

import java.io.Serializable;

public class Department implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;//主键id
	private String did;//部门编号
	private String dname;//部门名称
	private String dmanager;//部门经理
	private int dnumber;//部门人数
	private String ddescription;//部门描述
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getDmanager() {
		return dmanager;
	}
	public void setDmanager(String dmanager) {
		this.dmanager = dmanager;
	}
	public int getDnumber() {
		return dnumber;
	}
	public void setDnumber(int dnumber) {
		this.dnumber = dnumber;
	}
	public String getDdescription() {
		return ddescription;
	}
	public void setDdescription(String ddescription) {
		this.ddescription = ddescription;
	}
	
	

}
