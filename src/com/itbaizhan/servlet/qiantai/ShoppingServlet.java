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

import com.itbaizhan.bean.SelectBean;


public class ShoppingServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ShoppingServlet() {
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
		String bookId = request.getParameter("bookId");//获取books_id
		String m = request.getParameter("i"); 
		String num = request.getParameter("num"+m);//获取购物车修改数量
		String str = "";//mapping跳转时的值
		String sql = "select * from books where id="+bookId;//sql语句
		String[] args = {"id","name","author","publishing","number","price","storage","brief","type","tate","sums","imgpath","price1","sums1"};
		String del = request.getParameter("del");//获取删除商品的记号
		String remove = request.getParameter("remove");//获取清空购物车的记号
		HttpSession session = request.getSession();
		ArrayList login = (ArrayList)session.getAttribute("login");//获取用户信息
		SelectBean ib = new SelectBean();
		ArrayList al = ib.select(sql, args);//查询菜品信息
		int sum = 1;//购买一种菜品的数量
		if(login == null || login.size() == 0){
			str = "/servlet/SessLoginServlet";//用户信息不存在跳到首页
		}else{
			str = "/qiantai/shopping.jsp";//跳到购物车页面
			ArrayList shopping = (ArrayList)session.getAttribute("shopping");//获取购物车信息
			if(bookId !=null && !bookId.equals("")){
				ArrayList altem = (ArrayList)al.get(0);
				if(shopping == null || shopping.size() == 0){//购物车为空时
					ArrayList alShop = new ArrayList();
					alShop.add(altem.get(0));
					alShop.add(altem.get(1));
					alShop.add(altem.get(12));
					alShop.add(""+sum);
					shopping = new ArrayList();
					shopping.add(alShop);
				}else{
					boolean bool = true;
					for(int i = 0;i < shopping.size();i++){//查找是否有相同的商品，有的话数目加1
						ArrayList alShop = (ArrayList)shopping.get(i);
						if(alShop.get(0).equals(bookId)){
							sum = Integer.parseInt(alShop.get(3).toString())+sum;
							if(num != null && !num.equals("")){
								sum = Integer.parseInt(num);
							}
							alShop.set(3,""+sum);
							bool = false;
							break;
						}
					}
					if(bool){//没有的话，加入一个新商品
						ArrayList alShop = new ArrayList();
						alShop.add(altem.get(0));
						alShop.add(altem.get(1));
						alShop.add(altem.get(12));
						alShop.add(""+sum);
						shopping.add(alShop);
					}
				}
			}
			if(del != null && !del.equals("") && shopping !=null && shopping.size()!= 0){
				shopping.remove(Integer.parseInt(del));//删除商品
			}
			session.setAttribute("shopping",shopping);
			if(remove != null && !remove.equals("") && session.getAttribute("shopping") != null && !session.getAttribute("shopping").equals("")){
				session.removeAttribute("shopping");//清空购物车
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
