package com.itbaizhan.servlet.qiantai;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itbaizhan.bean.InsertUpdateDelBean;
import com.itbaizhan.util.Validate;



public class BeforehandBookServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public BeforehandBookServlet() {
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
		String bookid = vd.getUnicode(request.getParameter("bookid"));
		String price = vd.getUnicode(request.getParameter("price"));
		HttpSession session = request.getSession();
		ArrayList login = (ArrayList)session.getAttribute("login");
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		String sql = "insert into beforehand(users,books,price) values('"+login.get(0)+"','"+bookid+"','"+price+"')";
		ib.insertANDupdateANDdel(sql);
		request.setAttribute("okbeforehand", "1");
		RequestDispatcher rd=request.getRequestDispatcher("/qiantai/loan_book_note.jsp");
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
