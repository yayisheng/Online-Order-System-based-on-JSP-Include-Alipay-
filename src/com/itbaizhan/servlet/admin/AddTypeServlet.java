package com.itbaizhan.servlet.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.InsertUpdateDelBean;
import com.itbaizhan.util.Validate;


public class AddTypeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddTypeServlet() {
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
		String name = vd.getUnicode(request.getParameter("name"));
		String str = "";
		String sql ="insert into types(name) values('"+name+"')";
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		int flag = ib.insertANDupdateANDdel(sql);
		if(flag == -1){
			str = "/admin/addtype.jsp";
			request.setAttribute("error", "1");
		}else{
			str = "/admin/typelist.jsp";
			request.setAttribute("ok", "1");
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
