package com.itbaizhan.servlet.qiantai;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itbaizhan.bean.SelectBean;


public class ShowUserServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ShowUserServlet() {
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
		SelectBean sb = new SelectBean();
		HttpSession session = request.getSession();
		if(session.getAttribute("login") != null && !session.getAttribute("login").equals("")){
			ArrayList login = (ArrayList)session.getAttribute("login");
			String id = (String)login.get(0);
			String sql = "select * from users where id='"+id+"'";
			String args[] ={"id","name","pwd","realname","sex","age","card","address","phone","email","code","type"};
			ArrayList al = sb.select(sql, args);
			request.setAttribute("user", al);
		}
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
