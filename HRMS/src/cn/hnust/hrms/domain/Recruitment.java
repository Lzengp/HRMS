package cn.hnust.hrms.domain;

import java.util.Date;

public class Recruitment {
	private int id; //招聘人id
	private String rname;//招聘人名字
	private String rgender;//性别
	private Date age;//年龄
	private String rcellphone;//电话
	private String diploma;//文凭
	private String description;//描述
	
	public Date getAge() {
		return age;
	}
	public void setAge(Date age) {
		this.age = age;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getRgender() {
		return rgender;
	}
	public void setRgender(String rgender) {
		this.rgender = rgender;
	}
	public String getRcellphone() {
		return rcellphone;
	}
	public void setRcellphone(String rcellphone) {
		this.rcellphone = rcellphone;
	}
	public String getDiploma() {
		return diploma;
	}
	public void setDiploma(String diploma) {
		this.diploma = diploma;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
