package com.itbaizhan.servlet.qiantai;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itbaizhan.bean.ReckoningBean;


public class ReckoningServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ReckoningServlet() {
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
		HttpSession session = request.getSession();
		ArrayList shopping = (ArrayList) session.getAttribute("shopping");
		if (shopping == null || shopping.size() == 0) {
			request.setAttribute("null", "1");
		} else {
			ArrayList login = (ArrayList) session.getAttribute("login");
			String id = (String) login.get(0);
			ReckoningBean rb = new ReckoningBean();
			int flag = rb.insert(shopping, id);
			if (flag == -1) {
				request.setAttribute("error", "1");
			}
			else if (flag == 0) {
				request.setAttribute("ok", "1");
				session.removeAttribute("shopping");
				RequestDispatcher rd = request
				.getRequestDispatcher("/qiantai/myshopping.jsp");
		rd.forward(request, response);
			}
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occure
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
