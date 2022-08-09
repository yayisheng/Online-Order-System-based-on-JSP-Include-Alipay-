package com.itbaizhan.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.InsertUpdateDelBean;
import com.itbaizhan.util.Validate;



public class StockAddServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public StockAddServlet() {
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
		String unit = vd.getUnicode(request.getParameter("unit"));
		String sums = vd.getUnicode(request.getParameter("sums"));
		String price = vd.getUnicode(request.getParameter("price"));
		SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd kk:mm",Locale.getDefault());
		Date currentDate = new Date();
		String lastdate = formatter.format(currentDate);
		String sql = "insert into stock(name,unit,sums,price,times) values('"+name+"','"+unit+"','"+sums+"','"+price+"','"+lastdate+"')";
		InsertUpdateDelBean ib = new InsertUpdateDelBean();
		ib.insertANDupdateANDdel(sql);
		request.setAttribute("ok", "1");
		RequestDispatcher rd=request.getRequestDispatcher("/admin/stock_list.jsp");
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
