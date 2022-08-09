package com.itbaizhan.servlet.qiantai;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.InsertUpdateDelBean;
import com.itbaizhan.bean.SelectBean;
import com.itbaizhan.util.Validate;



public class ContinueBookServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ContinueBookServlet() {
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
		String continueday = vd.getUnicode(request.getParameter("sumday"));
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		String sql = "update loanbook set continueday='"+continueday+"',continuetime=dateadd(day,"+continueday+",endtime) where id="+id;
		ib.insertANDupdateANDdel(sql);
		request.setAttribute("okcontinue","1");
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
