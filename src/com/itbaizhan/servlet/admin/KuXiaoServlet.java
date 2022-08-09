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


public class KuXiaoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public KuXiaoServlet() {
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
		String kuda = vd.getUnicode(request.getParameter("kuda"));
		String kuxiao = vd.getUnicode(request.getParameter("kuxiao"));
		String souda = vd.getUnicode(request.getParameter("souda"));
		String souxiao = vd.getUnicode(request.getParameter("souxiao"));
		String sql = "select * from books ";
		String[] args = {"id","name","author","publishing","number","price","storage","brief","type","tate","sums","imgpath","price1","sums1"};
		if(kuda != null && !kuda.equals("")){
			sql += "where storage>"+kuda;
		}
		if(kuxiao != null && !kuxiao.equals("")){
			sql += "where storage<"+kuxiao;
		}
		if(souda != null && !souda.equals("")){
			sql += "where sums>"+souda;
		}
		if(souxiao != null && !souxiao.equals("")){
			sql += "where sums<"+souxiao;
		}
		SelectBean sb = new SelectBean();
		ArrayList al = sb.select(sql, args);
		request.setAttribute("books", al);
		RequestDispatcher rd=request.getRequestDispatcher("/admin/kuxiao.jsp");
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
