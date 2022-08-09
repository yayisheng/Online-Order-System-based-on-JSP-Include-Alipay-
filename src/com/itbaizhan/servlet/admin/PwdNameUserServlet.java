package com.itbaizhan.servlet.admin;

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


public class PwdNameUserServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PwdNameUserServlet() {
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
		String newpwd = vd.getUnicode(request.getParameter("newpwd"));
		String newname = vd.getUnicode(request.getParameter("newname"));
		String name = vd.getUnicode(request.getParameter("name"));
		String pwd = vd.getUnicode(request.getParameter("pwd"));
		String xpwd = vd.getUnicode(request.getParameter("xpwd"));
		String xname = vd.getUnicode(request.getParameter("xname"));
		String xuser = vd.getUnicode(request.getParameter("xuser"));
		String userpwd = vd.getUnicode(request.getParameter("userpwd"));
		String sql = "";
		String str ="";
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		HttpSession session = request.getSession();
		ArrayList adminlogin = (ArrayList)session.getAttribute("adminlogin");
		ArrayList login = (ArrayList)session.getAttribute("login");
		String id = "";
		if(adminlogin != null && !adminlogin.equals("")){
			id = (String)adminlogin.get(0);
		}
		String userid = "";
		if(login != null && !login.equals("")){
			userid = (String)login.get(0);
		}
		
		if(userpwd != null && userpwd.equals("1")){
			sql = "update [user] set pwd='"+newpwd+"' where id='"+userid+"'";
			str = "/index.jsp";
			ib.insertANDupdateANDdel(sql);
		}else{
			if(xpwd != null && xpwd.equals("1")){
				sql = "update admin set pwd='"+newpwd+"' where id='"+id+"'";
			}
			if(xname != null && xname.equals("1")){
				sql = "update admin set name='"+newname+"' where id='"+id+"'";
			}
			if(xuser != null && xuser.equals("1")){
				sql = "insert into admin(name,pwd) values('"+name+"','"+pwd+"')";
			}
			int flag = ib.insertANDupdateANDdel(sql);
			if(flag == -1){
				request.setAttribute("error", "1");
				str = "/admin/adduser.jsp";
			}else{
				session.removeAttribute("login");
				str = "/admin/index.jsp";
			}
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
