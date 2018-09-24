package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.ChartBean;
import Bean.UserBean;
import Dao.ChartDao;
import Dao.CreateDao;
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

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
			doPost(request,response);
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
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String exp="";
		List<ChartBean> chartBeans=new ArrayList<ChartBean>();
		ChartDao chartDao=new ChartDao();
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		
		//System.out.print(username);
		if(username.equals("admin")){
			if(password.equals("admin")){
			chartBeans=chartDao.StaticNumber();
			request.setAttribute("chartBeans", chartBeans);
			request.getRequestDispatcher("/adminbing.jsp").forward(
					request, response); 
			}else{
				exp="管理员密码错误";
			}
		}else{
		UserBean userBean = new UserBean();
		LoginDao loginDao =new LoginDao();
//		
		try {
			userBean=loginDao.Login(username);
			
			System.out.print((userBean.getUsername().trim()));
			System.out.print(userBean.getPassword().trim());
			System.out.print(userBean.getPhonenumber().trim());
			System.out.print(userBean.getEmail().trim());
			chartBeans=chartDao.StaticNumber();
			request.setAttribute("chartBeans", chartBeans);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(password.equals(userBean.getPassword().trim())){
			response.sendRedirect("/DrugStatic/chneging.jsp");
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		}
		else{
		System.out.print("密码错误");
		}
//		}
//		System.out.print(exp);
		}
	}}
	

