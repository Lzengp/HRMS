package cn.hnust.hrms.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.hnust.hrms.domain.Department;
import cn.hnust.hrms.service.DepartmentService;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

/**
 * Servlet implementation class DepartmentServlet
 */
@WebServlet("/DepartmentServlet")
public class DepartmentServlet  extends BaseServlet  {
	private static final long serialVersionUID = 1L;
       
	DepartmentService dService = new DepartmentService();
/**
 * 添加部门信息
 * @param request
 * @param response
 * @return
 * @throws ServletException
 * @throws IOException
 */
	public String depadd(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * 1.封装表单数据到Department对象
		 * 2.使用service方法完成添加工作
		 * 3.向request域中保存成功信息
		 * 4.转发到msg.jsp
		 */
			
			Department form = CommonUtils.toBean(request.getParameterMap(),Department.class);//封装表单数据到Department对象
			dService.depadd(form);//把表单数据传给Service中的add方法
			request.setAttribute("msg", "添加成功！");
		    return "r:/department/depadd.jsp";//重定向,使页面样式不改变
			}
	/**
	 * 查找所有部门信息
	 */
		public String findAll(HttpServletRequest request, 
				HttpServletResponse response) throws ServletException, IOException {
		/*
		 *1.调用service所有的部门
		 *2.保存到request域中
		 *3.转发到depquery.jsp
		 */
			HttpSession s = request.getSession();//把数据存到session域中
			s.setAttribute("depList",dService.findAll());
			return "f:/department/depquery.jsp";
			//转发到depquery.jsp，f代表转发，在BaseServlet定义了
			//return "f:employee/empadd.jsp";
			
			}
		/**
		 * 查找所有部门信息,返回给employeeadd.jsp,为了让数据库中存在的部门出现在所属部门中
		 */
			public String findAllEmp(HttpServletRequest request, 
					HttpServletResponse response) throws ServletException, IOException {
				
				HttpSession s = request.getSession();
				s.setAttribute("depList",dService.findAll());
				return "f:employee/empadd.jsp";
				
				}
			/**
			 * 查找所有部门信息,返回给recedit.jsp,为了让数据库中存在的部门出现在所属部门中
			 */
				public String findAllrec(HttpServletRequest request, 
						HttpServletResponse response) throws ServletException, IOException {
					
					HttpSession s = request.getSession();
					s.setAttribute("depList",dService.findAll());
					return "f:recruitment/recquery.jsp";
					
					}
		/**
		 * 按条件查询
		 */
		public String query(HttpServletRequest request, 
				HttpServletResponse response) throws ServletException, IOException {
			/*
			 * 1.封装表单数据到Department对象中，dname，它是条件
			 * 2.使用Department调用service方法，得到List<Department>
			 * 3.保存到request域
			 * 4.转发到depquery.jsp
			 */
	    	//Department criteria = CommonUtils.toBean(request.getParameterMap(), Department.class);
			String  dname = request.getParameter("search");
			//System.out.println(dname);
			List<Department> depList= dService.query(dname);
			request.setAttribute("depList",depList);
			return "f:/department/depquery.jsp";
		}
		
		/**
		 * 删除部门
		 */
		public String delete(HttpServletRequest request, 
				HttpServletResponse response) throws ServletException, IOException {
			
			String id = request.getParameter("id");//得到did的值，通过did部门编号来删除
			dService.delete(id);//调用service方法
			return "f:/department/depquery.jsp";
		}
		/**
		 * 
		 * 加载信息，把信息回显到添加表中，在添加表中修改
		 */
			public String preEdit(HttpServletRequest request, 
					HttpServletResponse response) throws ServletException, IOException {
			/*
			 *1.获取did
			 *2.用did调用service方法，得到Department对象
			 *3.把Department对象保存到request域中
			 *4.转发到depedit.jsp
			 */
				String did = request.getParameter("did");
				Department dep = dService.load(did);
				request.setAttribute("dep",dep);
				return "f:/department/depedit.jsp";//转发到depedit.jsp，f代表转发，在BaseServlet定义了
				
				}
		/**
		 * 修改部门信息
		 */
		public String depedit(HttpServletRequest request, 
				HttpServletResponse response) throws ServletException, IOException {
			
			//得到表单数据
			Department dep = CommonUtils.toBean(request.getParameterMap(),Department.class);
			dService.depedit(dep);
			return "f:/department/depquery.jsp";//转发
		}
	}

