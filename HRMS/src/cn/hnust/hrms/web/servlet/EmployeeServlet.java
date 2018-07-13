package cn.hnust.hrms.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hnust.hrms.domain.Employee;

import cn.hnust.hrms.service.EmployeeService;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;


@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
	EmployeeService empService = new EmployeeService();
	/**
	 * 保存员工所有信息
	 */
	public String empadd(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		Employee form = CommonUtils.toBean(request.getParameterMap(), Employee.class);
		empService.empadd(form);
		return "f:/employee/empadd.jsp";
	}
	/**
	 * 查询所有员工信息
	 */
	public String findAll(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {

		request.setAttribute("empList", empService.findAll());
		return "f:/employee/empquery.jsp";
	}
	/**
	 * 搜索员工信息
	 */
	public String query(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
	
    	
		String  ename = request.getParameter("search");//得到输入框员工的姓名
		List<Employee> empList= empService.query(ename);//把查询的信息保存到List集合中
		request.setAttribute("empList",empList);
		return "f:/employee/empquery.jsp";
	}
	/**
	 * 修改员工信息
	 */
	public String edit(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		//得到表单数据,存到Employee对象中
		
		Employee emp = CommonUtils.toBean(request.getParameterMap(), Employee.class);
		//System.out.println(emp.getId());
		empService.edit(emp);//，调用service方法
		return "/employee/empquery.jsp";
	}
	/**
	 * 加载员工信息到表格中，用来修改
	 */
	public String preEdit(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		String eid = request.getParameter("id");
		int id = Integer.parseInt(eid);
		Employee empList = empService.load(id);//，调用service方法，通过id把查询的数据存放到list集合中
		request.setAttribute("empList", empList);//把list集合存入域对象中
		return "/employee/empedit.jsp";
	}
	
	/**
	 * 删除员工信息，通过id删除
	 */
	public String delete(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
			
		String id = request.getParameter("id");
		empService.delete(id);
		return "f:/employee/empquery.jsp";
	}
}
