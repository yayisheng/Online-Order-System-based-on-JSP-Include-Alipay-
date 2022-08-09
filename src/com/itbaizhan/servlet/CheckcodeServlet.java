package com.itbaizhan.servlet;

import javax.imageio.ImageIO;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbaizhan.util.CodeUtil;

import java.io.IOException;

@WebServlet("/checkCodeServlet")
public class CheckcodeServlet extends HttpServlet {
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 设置请求的编码
        request.setCharacterEncoding("UTF-8");
        // 设置响应的编码
        response.setContentType("text/html;charset=UTF-8");
        // 获取验证码
        String scode = CodeUtil.getCode();
        // 将验证码保存到session中，便于以后验证码
        request.getSession().setAttribute("scode", scode);
        // 发送图片
        ImageIO.write(CodeUtil.getCodeImg(scode), "JPEG", response.getOutputStream());
    }
 
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        doPost(req, resp);
    }
}
