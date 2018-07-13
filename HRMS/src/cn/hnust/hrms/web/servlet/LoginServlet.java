package cn.hnust.hrms.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.hnust.hrms.domain.Login;
import cn.hnust.hrms.service.LoginService;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

@WebServlet("/LoginServlet")
public class LoginServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
    
	LoginService lService =new LoginService();
	
	/**
	 * 校验用户名和密码
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String query(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * map的key：user，pwd
		 * person的属性：user，pwd
		 * map中没有名为name的键值，而多出一个名为myname的键值，所以映射后的person对象的name属性值为null。
		 * map中的age和birthday都是字符串类型，而person的age是int类型、birthday是Date类型，但toBean()方法会自动对Map中值进行类型转换。
		 */
		
		//把request域中信息保存在map中
		//封装表单数据，注意jsp中的name与Login中的变量name一致
	    //Login form = CommonUtils.toBean(request.getParameterMap(), Login.class);
		String user = request.getParameter("user");
		String pwd = request.getParameter("pwd");
		//System.out.println(user);
		//System.out.println(pwd);
		List<Login> lList = lService.query(user);
		   for (Login login : lList) {
			  String u = login.getUser();
			  String p = login.getPwd(); 
			  int loginid = login.getId();
			  if(user.equals(u) && pwd.equals(p)) {
				  HttpSession session = request.getSession();
				  session.setAttribute("user", u);
				  session.setAttribute("pwd", p);
				  session.setAttribute("loginid", loginid);
			  return "f:/main.jsp";
			  } 
				  
			  
		   } 
		   request.setAttribute("msg", "用户名或密码错误!");
		   return "f:/login.jsp";
	}
	
	  public String edit(HttpServletRequest request, 
				HttpServletResponse response) throws ServletException, IOException {
			
			//得到新密码，旧密码，登录密码数据
		    String first = request.getParameter("first");
		    String old = request.getParameter("old");
		    String pwd = request.getParameter("pwd");
		    String loginid= request.getParameter("loginid");
		   
		    int id=Integer.parseInt(loginid);
		    //System.out.println(id);
		    if(old.equals(pwd)) //判断输入的旧密码是否存在
		    {
		    	lService.edit(first,id);
		    	return "f:login.jsp";//转发到登录界面
		    }else {
		    	request.setAttribute("msg", "原密码错误！");//把错误信息存到request域中
		    	return "f:person/edit.jsp";//转发到修改个人信息页面
		    }
			
	  }
	  /**
	   * 添加管理员
	   * @param request
	   * @param response
	   * @return
	   * @throws ServletException
	   * @throws IOException
	   */
	  public String sysadd(HttpServletRequest request, 
				HttpServletResponse response) throws ServletException, IOException {
		  
		  Login form = CommonUtils.toBean(request.getParameterMap(), Login.class);
		  lService.sysadd(form);
		  request.setAttribute("msg", "添加成功！");
		  return "f:/system/sysadd.jsp";
	  }
	  /**
	   * 查询
	   */
		public String sysquery(HttpServletRequest request, 
				HttpServletResponse response) throws ServletException, IOException {
		
	    	
			String  user = request.getParameter("search");//得到输入框员工的姓名
			List<Login> sysList= lService.sysquery(user);//把查询的信息保存到List集合中
			request.setAttribute("sysList",sysList);
			return "f:/system/sysquery.jsp";
		}
	  /**
	   * 删除
	   */
		public String delete(HttpServletRequest request, 
				HttpServletResponse response) throws ServletException, IOException {
				
			String id = request.getParameter("id");
			lService.delete(id);
			return "f:/system/sysquery.jsp";
		}
	
		
}
