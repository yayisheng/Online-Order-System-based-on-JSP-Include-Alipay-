package com.itbaizhan.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.InsertUpdateDelBean;
import com.itbaizhan.util.Validate;



public class DelServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DelServlet() {
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
		String bookid = vd.getUnicode(request.getParameter("id"));
		String typeid = vd.getUnicode(request.getParameter("typeid"));
		String userid = vd.getUnicode(request.getParameter("userid"));
		String leaveword = vd.getUnicode(request.getParameter("leaveword"));
		String loanbook = vd.getUnicode(request.getParameter("loanbook"));
		String beforehand = vd.getUnicode(request.getParameter("beforehand"));
		String nutrition = vd.getUnicode(request.getParameter("nutrition"));
		String stock = vd.getUnicode(request.getParameter("stock"));
		String emp = vd.getUnicode(request.getParameter("emp"));
		
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		String sql = "";
		String str = "";
		if(bookid != null && !bookid.equals("")){
			str = "/admin/booklist.jsp";
			sql = "delete from books where id='"+bookid+"'";
			ib.insertANDupdateANDdel(sql);
		}
		if(typeid != null && !typeid.equals("")){
			str = "/admin/typelist.jsp";
			sql = "delete from types where id='"+typeid+"'";
			int flag = ib.insertANDupdateANDdel(sql);
			if(flag == -1){
				request.setAttribute("error", "1");
			}
		}
		if(userid != null && !userid.equals("")){
			str = "/admin/userlist.jsp";
			sql = "delete from users where id='"+userid+"'";
			ib.insertANDupdateANDdel(sql);
		}
		if(leaveword != null && !leaveword.equals("")){
			str = "/admin/leave_word.jsp";
			sql = "delete from leaveword where id="+leaveword;
			ib.insertANDupdateANDdel(sql);
		}
		if(loanbook != null && !loanbook.equals("")){
			str = "/admin/order.jsp";
			sql = "delete from loanbook where id="+loanbook;
			ib.insertANDupdateANDdel(sql);
		}
		if(beforehand != null && !beforehand.equals("")){
			str = "/admin/order1.jsp";
			sql = "delete from beforehand where id="+beforehand;
			ib.insertANDupdateANDdel(sql);
		}
		if(nutrition != null && !nutrition.equals("")){
			str = "/admin/nutrition_list.jsp";
			sql = "delete from nutrition where id="+nutrition;
			ib.insertANDupdateANDdel(sql);
		}
		if(emp != null && !emp.equals("")){
			str = "/admin/emp_list.jsp";
			sql = "delete from emp where id="+emp;
			ib.insertANDupdateANDdel(sql);
		}
		if(stock != null && !stock.equals("")){
			str = "/admin/stock_list.jsp";
			sql = "delete from stock where id="+stock;
			ib.insertANDupdateANDdel(sql);
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
