package test;

import org.junit.Test;

import cn.hnust.hrms.dao.RecDao;
import cn.hnust.hrms.domain.Recruitment;

public class RecTest {
	
	@Test
	public void addfun() {
		Recruitment rec = new Recruitment();
		RecDao re = new RecDao();
		rec.setRname("龙伟");
		rec.setRgender("男");
		rec.setRcellphone("15000000");
		re.recadd(rec);
	}
	
	@Test
	public void queryfun() {
		RecDao re = new RecDao();
		System.out.println(re.query("龙伟"));
	}



}
