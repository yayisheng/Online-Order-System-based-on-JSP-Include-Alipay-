package com.itbaizhan.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.SelectBean;

public class ListServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ListServlet() {
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
		
		String sql1 = "select * from types";
		String[] args1 = {"id","name"};
		ArrayList al1 = ib.select(sql1, args1);
		request.setAttribute("type", al1);
		
		String sql2 = "select * from books";
		String[] args2 = {"id","name","author","publishing","number","price","storage","brief","type","tate","sums","imgpath","price1","sums1"};
		ArrayList al2 = ib.select(sql2, args2);
		request.setAttribute("books", al2);
		
		String sql3 = "select * from books order by sums1 desc";
		String[] args3 = {"id","name","author","publishing","number","price","storage","brief","type","tate","sums","imgpath","price1","sums1"};
		ArrayList al3 = ib.select(sql3, args3);
		request.setAttribute("xiaosou", al3);
		
		String sql5 = "select * from books where tate=1";
		String[] args5 = {"id","name","author","publishing","number","price","storage","brief","type","tate","sums","imgpath","price1","sums1"};
		ArrayList al5 = ib.select(sql5, args5);
		request.setAttribute("tuibook", al5);
		
		String sql6 = "select * from books where tate=2";
		String[] args6 = {"id","name","author","publishing","number","price","storage","brief","type","tate","sums","imgpath","price1","sums1"};
		ArrayList al6 = ib.select(sql6, args6);
		request.setAttribute("newbook", al6);
		
		String sql7 = "select * from users";
		String[] args7 = {"id","name","pwd","realname","sex","age","card","address","phone","email","code"};
		ArrayList al7 = ib.select(sql7, args7);
		request.setAttribute("users", al7);
		
		String sql10 = "select * from leaveword";
		String[] args10 = {"id","users","title","content","times"};
		ArrayList al10 = ib.select(sql10, args10);
		request.setAttribute("leaveword", al10);
		
		String sql13 = "select * from books order by id desc";
		String[] args13 = {"id","name","author","publishing","number","price","storage","brief","type","tate","sums","imgpath","price1","sums1"};
		ArrayList al13 = ib.select(sql13, args13);
		request.setAttribute("xiaosou1", al13);
		
		String sql14 = "select * from nutrition";
		String[] args14 = {"id","name","content"};
		ArrayList al14 = ib.select(sql14, args14);
		request.setAttribute("nutrition", al14);
		
		String sql15 = "select * from emp";
		String[] args15 = {"id","name","sex","birthday","phone","addr","duty","estate"};
		ArrayList al15 = ib.select(sql15, args15);
		request.setAttribute("emp", al15);
		
		String sql16 = "select * from stock";
		String[] args16 = {"id","name","unit","sums","price","times"};
		ArrayList al16 = ib.select(sql16, args16);
		request.setAttribute("stock", al16);
		
		
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
