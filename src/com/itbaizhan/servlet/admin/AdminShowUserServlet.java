package com.itbaizhan.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.SelectBean;


public class AdminShowUserServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AdminShowUserServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		SelectBean sb = new SelectBean();
		String sql = "select * from users where id='"+id+"'";
		String args[] ={"id","name","pwd","realname","sex","age","card","address","phone","email","code","type"};
		ArrayList al = sb.select(sql, args);
		request.setAttribute("user", al);
		RequestDispatcher rd=request.getRequestDispatcher("/admin/showuser.jsp");
        rd.forward(request,response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
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
