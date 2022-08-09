package com.itbaizhan.servlet.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itbaizhan.bean.AdminLoginBean;
import com.itbaizhan.util.Validate;


public class AdminLoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AdminLoginServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Validate vd = new Validate();
		String name = vd.getUnicode(request.getParameter("name"));
		String pwd = vd.getUnicode(request.getParameter("pwd"));
		String code = vd.getUnicode(request.getParameter("checkcode"));
		String realcode = (String) request.getSession().getAttribute("scode");

		String str = "";
		AdminLoginBean lb = new AdminLoginBean();
		int flag = lb.login(name, pwd);
		ArrayList al = lb.getArrayLst();
		HttpSession session = request.getSession();
		session.setAttribute("adminlogin", al);
		
		if(flag == 2 || flag == 3){
			str = "/admin/index.jsp";
			request.setAttribute("error", "1");
		}
		if(flag == 1){
			if(code.equals(realcode)) {
				System.err.println("验证码判断成功");
				str = "/admin/booklist.jsp";
			}else {
				str = "/admin/index.jsp";
				request.setAttribute("error", "4");
				
			}
			
		}
		RequestDispatcher rd=request.getRequestDispatcher(str);
        rd.forward(request,response);
	}




	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occure
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
