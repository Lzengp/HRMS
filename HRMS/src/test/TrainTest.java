package test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;

import cn.hnust.hrms.dao.TrainDao;
import cn.hnust.hrms.domain.Train;

public class TrainTest {
	
	@Test
	public void addfun() throws ParseException {
		String date = "2010-1-2";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date newDate = sdf.parse(date);
		
		Train t = new Train();
		TrainDao tDao = new TrainDao();
		t.setTname("longwei");
		t.setTaddress("湘潭");
		t.setTcellphone("111315454");
		t.setTperson("张三，李四，王五");
		t.setTtime(newDate);
		tDao.traadd(t);
		
	}
	
	@Test
	public void queryfun() {
		TrainDao tDao = new TrainDao();
		tDao.query("龙");
	}

}
