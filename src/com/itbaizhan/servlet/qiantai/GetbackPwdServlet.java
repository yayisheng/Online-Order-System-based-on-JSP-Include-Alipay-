package com.itbaizhan.servlet.qiantai;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.InsertUpdateDelBean;
import com.itbaizhan.bean.SelectBean;
import com.itbaizhan.util.Validate;


public class GetbackPwdServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public GetbackPwdServlet() {
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
		String email = vd.getUnicode(request.getParameter("email"));
		String name = vd.getUnicode(request.getParameter("name"));
		String pwd = vd.getUnicode(request.getParameter("pwd"));
		String sql = "select * from users where name='"+name+"' and email='"+email+"'";
		String[] args = {"email"};
		SelectBean sb = new SelectBean();
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		ArrayList al = sb.select(args, sql);
		if(al == null || al.size() == 0){
			request.setAttribute("error1", "1");
		}else{
			sql = "update users set pwd='"+pwd+"' where name='"+name+"'";
			ib.insertANDupdateANDdel(sql);
			request.setAttribute("ok1", "1");
		}
		RequestDispatcher rd=request.getRequestDispatcher("/qiantai/getback_pwd.jsp");
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
