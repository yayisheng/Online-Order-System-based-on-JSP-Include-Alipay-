package com.itbaizhan.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RemoveServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public RemoveServlet() {
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
		String login = request.getParameter("login");
		String admin = request.getParameter("admin");
		String str ="";
		HttpSession session = request.getSession();
		if(login != null && !login.equals("")){
			session.removeAttribute("login");
			session.removeAttribute("shopping");
			str = "/qiantai/index.jsp";
		}
		if(admin != null && !admin.equals("")){
			session.removeAttribute("adminlogin");
			str = "/admin/index.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(str);
		rd.forward(request, response);
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
