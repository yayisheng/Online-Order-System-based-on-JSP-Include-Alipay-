package com.itbaizhan.servlet.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.InsertUpdateDelBean;
import com.itbaizhan.util.Validate;


public class EmpReworkServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EmpReworkServlet() {
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
		String id = vd.getUnicode(request.getParameter("id"));
		String name = vd.getUnicode(request.getParameter("name"));
		String sex = vd.getUnicode(request.getParameter("sex"));
		String birthday = vd.getUnicode(request.getParameter("birthday"));
		String phone = vd.getUnicode(request.getParameter("phone"));
		String addr = vd.getUnicode(request.getParameter("addr"));
		String duty = vd.getUnicode(request.getParameter("duty"));
		
		String sql = "update emp set name='"+name+"',sex='"+sex+"',birthday='"+birthday+"',phone='"+phone+"',addr='"+addr+"',duty='"+duty+"' where id='"+id+"'";
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		ib.insertANDupdateANDdel(sql);
		response.sendRedirect("../admin/emp_rework.jsp?ok=1&id="+id);
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
