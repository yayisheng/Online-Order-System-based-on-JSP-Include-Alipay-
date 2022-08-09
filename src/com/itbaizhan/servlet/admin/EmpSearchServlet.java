package com.itbaizhan.servlet.admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.SelectBean;
import com.itbaizhan.util.Validate;


public class EmpSearchServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EmpSearchServlet() {
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
		Validate vd = new Validate();
		String name = vd.getUnicode(request.getParameter("name"));
		SelectBean sb = new SelectBean();
		String sql = "select * from emp ";
		String[] args = {"id","name","sex","birthday","phone","addr","duty","estate"};
		if(name != null && !name.equals("")){
			sql += "where name like '%"+name+"%'";
		}
		ArrayList al = sb.select(sql, args);
		request.setAttribute("emps", al);
		
		RequestDispatcher rd=request.getRequestDispatcher("/admin/emp_list.jsp");
		rd.forward(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
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
