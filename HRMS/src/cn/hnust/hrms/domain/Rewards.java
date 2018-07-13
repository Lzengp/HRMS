package cn.hnust.hrms.domain;

import java.io.Serializable;

public class Rewards implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;//奖惩主键
	private String name;//姓名
	private String rdate;//奖励时间
	private String pdate;//处罚时间
	private double rmoney;//奖励金额
	private double pmoney;//处罚金额
	private String rdescription;//奖励原因
	private String pdescription;//处罚原因
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public double getRmoney() {
		return rmoney;
	}
	public void setRmoney(double rmoney) {
		this.rmoney = rmoney;
	}
	public double getPmoney() {
		return pmoney;
	}
	public void setPmoney(double pmoney) {
		this.pmoney = pmoney;
	}
	public String getRdescription() {
		return rdescription;
	}
	public void setRdescription(String rdescription) {
		this.rdescription = rdescription;
	}
	public String getPdescription() {
		return pdescription;
	}
	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

	

}
