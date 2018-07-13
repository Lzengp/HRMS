package cn.hnust.hrms.domain;

import java.io.Serializable;
import java.util.Date;

public class Employee  implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int id;//员工主键id
	private String ename;//员工姓名
	private String egender;//性别
	private Date ebrithday;//生日
	private double esalary;//薪水
	private String eaddress;//员工地址
	private Date etime;//入职时间
	private String ecellphone;//电话
	private String department;//得到所选择的部门
	private int tid;//培训主键
	private int did;//部门主键
	

	public String getDepartment() {
		return department;
	}
	public void setDepartment(String daprtment) {
		this.department = daprtment;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEgender() {
		return egender;
	}
	public void setEgender(String egender) {
		this.egender = egender;
	}
	public Date getEbrithday() {
		return ebrithday;
	}
	public void setEbrithday(Date ebrithday) {
		this.ebrithday = ebrithday;
	}
	public double getEsalary() {
		return esalary;
	}
	public void setEsalary(double esalary) {
		this.esalary = esalary;
	}
	public String getEaddress() {
		return eaddress;
	}
	public void setEaddress(String eaddress) {
		this.eaddress = eaddress;
	}
	public Date getEtime() {
		return etime;
	}
	public void setEtime(Date etime) {
		this.etime = etime;
	}
	public String getEcellphone() {
		return ecellphone;
	}
	public void setEcellphone(String ecellphone) {
		this.ecellphone = ecellphone;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	

}
