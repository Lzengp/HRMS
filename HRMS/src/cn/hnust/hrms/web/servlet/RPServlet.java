package cn.hnust.hrms.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.hnust.hrms.domain.Rewards;
import cn.hnust.hrms.service.RPService;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

/**
 * Servlet implementation class RPServlet
 */
@WebServlet("/RPServlet")
public class RPServlet extends BaseServlet {
	
	private static final long serialVersionUID = 1L;
	
	RPService rpService =new RPService();
     /**
      * 添加奖惩信息  
      * @param request
      * @param response
      * @return
      */
	public String rpadd(HttpServletRequest request,
			HttpServletResponse response) {
		
		Rewards form = CommonUtils.toBean(request.getParameterMap(), Rewards.class);
		rpService.rpadd(form);
		return "f:/rewards/readd.jsp";
		
	}
	
	/**
	 * 查询
	 */
	public String query(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
	
    	
		String  name = request.getParameter("search");//得到输入框员工的姓名
		List<Rewards> rpList= rpService.query(name);//把查询的信息保存到List集合中
		request.setAttribute("rpList",rpList);
		return "f:/rewards/requery.jsp";
	}
	/**
	 * 删除
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String delete(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
			
		String id = request.getParameter("id");
		rpService.delete(id);
		return "f:/rewards/requery.jsp";
	}

}
