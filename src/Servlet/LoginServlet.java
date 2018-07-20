package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import Bean.BasicMessage;
import Dao.BasicMessageDao;
import Dao.LoginDao;
public class LoginServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("charset=utf-8");
			doPost(request, response);
				
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("charset=utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		BasicMessage basicMessage =new BasicMessage();
		//BasicMessageDao basicMessageDao =new BasicMessageDao();
		//basicMessage=basicMessageDao.Login(username);		
		
		if(username.equals("root")&&password.equals("rootnum")){
			response.sendRedirect("/innovate/pages/tabletree.html");
			System.out.println("管理员用户登录成功");
		}
		LoginDao loginDao =new LoginDao();
		basicMessage = loginDao.check(username, password);
		if(basicMessage.getPassword().equals(password)){//密码正确
			response.sendRedirect("/innovate/pages/basic.jsp");//重定向跳转 request.getContextPath()得到项目的根目录webroot
			System.out.println("普通用户登录成功");	
		}
		}
			
		}


