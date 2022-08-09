package com.itbaizhan.servlet.qiantai;

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


public class ModifyUserServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ModifyUserServlet() {
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
		String pwd = vd.getUnicode(request.getParameter("pwd"));
		String age = vd.getUnicode(request.getParameter("age"));
		String noid = vd.getUnicode(request.getParameter("noid"));
		String address = vd.getUnicode(request.getParameter("address"));
		String phone = vd.getUnicode(request.getParameter("phone"));
		String email = vd.getUnicode(request.getParameter("email"));
		String code = vd.getUnicode(request.getParameter("code"));
		String sql = "update users set pwd='"+pwd+"',age='"+age+"',card='"+noid+"',address='"+address+"',phone='"+phone+"',email='"+email+"',code='"+code+"' where id='"+id+"'";
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		ib.insertANDupdateANDdel(sql);
		SelectBean sb = new SelectBean();
		String sql1 = "select * from users where id='"+id+"'";
		String args[] ={"id","name","pwd","realname","sex","age","card","address","phone","email","code","type"};
		ArrayList al = sb.select(sql1, args);
		request.setAttribute("user", al);
		RequestDispatcher rd=request.getRequestDispatcher("/qiantai/modifyuser.jsp");
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
