package com.itbaizhan.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.InsertUpdateDelBean;
import com.itbaizhan.bean.SelectBean;
import com.itbaizhan.util.Validate;


public class UpdateTypeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateTypeServlet() {
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
		if(name != null && !name.equals("")){
			String sql ="update types set name='"+name+"' where id='"+id+"'";
			InsertUpdateDelBean ib = new InsertUpdateDelBean();
			ib.insertANDupdateANDdel(sql);
		}
		SelectBean sb = new SelectBean();
		String sql2 = "select * from types where id='"+id+"'";
		String[] args2 = {"id","name"};
		ArrayList al2 = sb.select(sql2, args2);
		request.setAttribute("bookinf", al2);

		RequestDispatcher rd=request.getRequestDispatcher("/admin/updatetype.jsp");
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
