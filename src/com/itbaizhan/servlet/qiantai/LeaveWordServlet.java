package com.itbaizhan.servlet.qiantai;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itbaizhan.bean.InsertUpdateDelBean;
import com.itbaizhan.util.Validate;



public class LeaveWordServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LeaveWordServlet() {
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
		String title = vd.getUnicode(request.getParameter("title"));
		String content = vd.getUnicode(request.getParameter("content"));
		HttpSession session = request.getSession();
		ArrayList login = (ArrayList)session.getAttribute("login");
		SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd kk:mm",Locale.getDefault());
		Date currentDate = new Date();
		String lastdate = formatter.format(currentDate);
		String sql = "insert into leaveword(users,title,content,times) values('"+login.get(0)+"','"+title+"','"+content+"','"+lastdate+"')";
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		ib.insertANDupdateANDdel(sql);
		request.setAttribute("ok", "1");
		RequestDispatcher rd=request.getRequestDispatcher("/qiantai/leave_word.jsp");
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
