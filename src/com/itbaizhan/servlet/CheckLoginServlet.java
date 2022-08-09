package com.itbaizhan.servlet;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@WebServlet("/checkLogin")
public class CheckLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String username = req.getParameter("username");
        String pwd = req.getParameter("pwd");
        String checkcode = req.getParameter("checkcode");
        //从session中取出正确的验证码
        HttpSession session = req.getSession();
        String  checkCoke = (String) session.getAttribute("checkCode");
        if(checkCoke!=null && !checkCoke.equals("") && checkcode.equalsIgnoreCase(checkCoke))
        {
            //判断用户名密码是否正确
            if(username.equals("admin") && pwd.equals("admin")){
                //登录成功,把用户信息放到session中
                //req.getSession().setAttribute("user",obj);
                resp.sendRedirect("/wldc/showbook.jsp");
            }else{
                //用户名或密码错误
                req.setAttribute("msg","用户名或密码错误");
                req.getRequestDispatcher("/index.jsp").forward(req,resp);
            }
        }else{
            //验证码输入错误
            req.setAttribute("msg","验证码错误");
            req.getRequestDispatcher("/index.jsp").forward(req,resp);
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}