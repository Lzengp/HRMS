package cn.hnust.hrms.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.hnust.hrms.domain.Train;
import cn.hnust.hrms.service.TrainService;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

/**
 * Servlet implementation class TrainServlet
 */
@WebServlet("/TrainServlet")
public class TrainServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
	TrainService tService = new TrainService();
	/**
	 * 添加培训信息
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String traadd(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		Train form = CommonUtils.toBean(request.getParameterMap(), Train.class);
		tService.traadd(form);
		return "f:/train/traadd.jsp";
	}
	
	/**
	 * 搜索培训信息
	 */
	public String query(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
	
    	
		String  tname = request.getParameter("search");//得到输入框员工的姓名
		List<Train> traList= tService.query(tname);//把查询的信息保存到List集合中
		request.setAttribute("traList",traList);
		return "f:/train/traquery.jsp";
	}
	
	/**
	 * 删除培训信息，通过id删除
	 */
	public String delete(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
			
		String id = request.getParameter("id");
		tService.delete(id);
		return "f:/train/traquery.jsp";
	}
	
   

}
