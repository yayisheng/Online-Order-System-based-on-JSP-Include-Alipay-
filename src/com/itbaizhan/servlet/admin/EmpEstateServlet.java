package com.itbaizhan.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.InsertUpdateDelBean;
import com.itbaizhan.util.Validate;



public class EmpEstateServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public EmpEstateServlet() {
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
		String estate = vd.getUnicode(request.getParameter("estate"));
		String sql = "";
		if(estate.equals("ÏÐÖÃ")){
			sql = "update emp set estate='Ã¦Âµ' where id="+id;
		}
		if(estate.equals("Ã¦Âµ")){
			sql = "update emp set estate='ÏÐÖÃ' where id="+id;
		}
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		ib.insertANDupdateANDdel(sql);
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
