package cn.hnust.hrms.domain;

import java.io.Serializable;
import java.util.Date;

public class Train implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private Date ttime;//培训时间
	private String taddress;//培训地点
	private String tname;//负责人
	private String tcellphone;//负责人联系电话
	private String tperson;//参与培训人员
	private String description;//培训描述
	
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTcellphone() {
		return tcellphone;
	}
	public void setTcellphone(String tcellphone) {
		this.tcellphone = tcellphone;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getTtime() {
		return ttime;
	}
	public void setTtime(Date ttime) {
		this.ttime = ttime;
	}
	public String getTaddress() {
		return taddress;
	}
	public void setTaddress(String taddress) {
		this.taddress = taddress;
	}

	public String getTperson() {
		return tperson;
	}
	public void setTperson(String tperson) {
		this.tperson = tperson;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
