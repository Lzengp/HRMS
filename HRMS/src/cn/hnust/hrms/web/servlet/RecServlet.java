package cn.hnust.hrms.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.hnust.hrms.domain.Employee;
import cn.hnust.hrms.domain.Recruitment;
import cn.hnust.hrms.service.EmployeeService;
import cn.hnust.hrms.service.RecService;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

/**
 * Servlet implementation class RecServlet
 */
@WebServlet("/RecServlet")
public class RecServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
	RecService recService = new RecService();//
	EmployeeService empService = new EmployeeService();//为了把招聘人的信息加入员工表
	/**
	 * 添加招聘人信息
	 */
	public String recadd(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		Recruitment form = CommonUtils.toBean(request.getParameterMap(), Recruitment.class);
		recService.recadd(form);
		return "f:/recruitment/recadd.jsp";
	}

	/**
	 * 搜索招聘人信息
	 */
	public String query(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
    	
		String  rname = request.getParameter("search");//得到输入框员工的姓名
		List<Recruitment> recList= recService.query(rname);//把查询的信息保存到List集合中
		request.setAttribute("recList",recList);
		return "f:/recruitment/recquery.jsp";
	}
	/**
	 * 删除招聘人信息，通过id删除
	 */
	public String delete(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
			
		String id = request.getParameter("id");//得到id
		recService.delete(id);//调用service方法
		return "f:/recruitment/recquery.jsp";
	}
	/**
	 * 加载招聘人信息，用来录用
	 */
	public String preEdit(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		String eid = request.getParameter("id");
		int id = Integer.parseInt(eid);
		Recruitment recList = recService.load(id);//，调用service方法，通过id把查询的数据存放到list集合中
		request.setAttribute("recList", recList);//把list集合存入域对象中
		return "f:/recruitment/recedit.jsp";//转发到对招聘人信息详细修改页面
	}
	/**
	 * 录用（把招聘人的信息添加到员工表中）
	 */
	public String recruit(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		Employee form = CommonUtils.toBean(request.getParameterMap(), Employee.class);
		empService.empadd(form);
		return "f:/recruitment/recquery.jsp";
	}
	/**
	 * 简历
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String resume(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		Recruitment form = CommonUtils.toBean(request.getParameterMap(), Recruitment.class);
		recService.recadd(form);
		request.setAttribute("msg", "本公司已收到你的简历，请注意电话联系！");
		return "f:/msg.jsp";
	}
}
