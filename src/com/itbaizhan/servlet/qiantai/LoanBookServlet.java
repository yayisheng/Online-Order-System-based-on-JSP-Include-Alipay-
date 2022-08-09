package com.itbaizhan.servlet.qiantai;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itbaizhan.bean.InsertUpdateDelBean;
import com.itbaizhan.bean.SelectBean;
import com.itbaizhan.util.Validate;


public class LoanBookServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoanBookServlet() {
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
		String sumday = vd.getUnicode(request.getParameter("sumday"));
		String price = vd.getUnicode(request.getParameter("price"));
		HttpSession session = request.getSession();
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		SelectBean sb = new SelectBean();
		ArrayList login = (ArrayList)session.getAttribute("login");
		String str = "";
		String sql = "update books set storage=storage-1 where id="+bookid;
		int flag = ib.insertANDupdateANDdel(sql);
		if(flag == -1){
			str = "/qiantai/loan_book.jsp";
			request.setAttribute("error1", "1");
			request.setAttribute("bookId", bookid);
		}else{
			sql = "select * from loanbook where users='"+login.get(0)+"' and books='"+bookid+"' and flag='Î´µã²Ë'";
			String[] args = {"id","users","books","price","sumday","begintime","endtime","continueday","continuetime","flag"};
			ArrayList al = sb.select(args, sql);
			if(al != null && al.size() != 0){
				str = "/qiantai/loan_book.jsp";
				request.setAttribute("error2", "1");
				request.setAttribute("bookId", bookid);
			}else{
				sql = "insert into loanbook(users,books,price,sumday) values('"+login.get(0)+"','"+bookid+"','"+price+"','"+sumday+"')";
				ib.insertANDupdateANDdel(sql);
				sql = "select max(id) as id from loanbook";
				String[] args1 = {"id"};
				ArrayList al1 = sb.select(args1, sql);
				sql = "update loanbook set endtime=dateadd(day,"+sumday+",begintime) where id="+al1.get(0);
				ib.insertANDupdateANDdel(sql);
				sql = "update books set sums=sums+1 where id="+bookid;
				ib.insertANDupdateANDdel(sql);
				str = "/qiantai/loan_book_note.jsp";
				request.setAttribute("ok", "1");
			}
		}		
		RequestDispatcher rd=request.getRequestDispatcher(str);
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
