package com.itbaizhan.servlet.admin;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.bean.SelectBean;
import com.itbaizhan.util.Validate;


public class StatisticServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public StatisticServlet() {
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
		String flag = vd.getUnicode(request.getParameter("flag"));
		SelectBean sb = new SelectBean();
		SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd kk:mm",Locale.getDefault());
		Date currentDate = new Date();
		String lastdate = formatter.format(currentDate);
		if(flag.equals("1")){
			String sql = "select b.name as bookname,booksum,price1 from books b,orders c where b.id=c.bookid and SUBSTRING(times,1,10)='"+lastdate.substring(0,10)+"'";
			String[] args = {"bookname","booksum","price1"};
			ArrayList al = sb.select(sql, args);
			request.setAttribute("sell", al);
		}
		if(flag.equals("2")){
			String sql = "select name,unit,sum(sums) as sums,sum(price) as price from stock where SUBSTRING(times,1,10)='"+lastdate.substring(0,10)+"' group by name";
			String[] args = {"name","unit","sums","price"};
			ArrayList al = sb.select(sql, args);
			request.setAttribute("stocks", al);
		}
		RequestDispatcher rd=request.getRequestDispatcher("/admin/statistic_list.jsp");
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
