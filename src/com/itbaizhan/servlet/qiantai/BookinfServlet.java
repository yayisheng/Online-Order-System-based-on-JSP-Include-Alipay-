package com.itbaizhan.servlet.qiantai;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.SelectBean;
import com.itbaizhan.util.Validate;



public class BookinfServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public BookinfServlet() {
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
		SelectBean ib = new SelectBean();
		Validate vd = new Validate();
		String id = vd.getUnicode(request.getParameter("id"));
		String adminshow = vd.getUnicode(request.getParameter("adminshow"));
		String adminupdate = vd.getUnicode(request.getParameter("adminupdate"));
		String str = "/qiantai/bookinf.jsp";
		String sql2 = "select * from books where id="+id;
		String[] args2 = {"id","name","author","publishing","number","price","storage","brief","type","tate","sums","imgpath","price1","sums1"};
		ArrayList al2 = ib.select(sql2, args2);
		request.setAttribute("bookinf", al2);
		if(adminshow != null && !adminshow.equals("")){
			str ="/admin/showbook.jsp";
		}
		if(adminupdate != null && !adminupdate.equals("")){
			str ="/admin/updatebook.jsp";
		}
		RequestDispatcher rd=request.getRequestDispatcher(str);
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
