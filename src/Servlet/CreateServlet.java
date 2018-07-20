package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.BasicMessage;
import Dao.CreateDao;
import Dao.LoginDao;
public class CreateServlet extends HttpServlet {
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
		/*PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();*/
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
		response.setContentType("text/html; charset=UTF-8");//从注册页面获取临时值
		String username =request.getParameter("username");
		String password =request.getParameter("password");
		String platnumber =request.getParameter("platnumber");
		String ratifydate =request.getParameter("ratifydate");
		String ratifynumber =request.getParameter("ratifynumber");
		String tec =request.getParameter("tec");
		HttpSession session =request.getSession();
		session.setAttribute("username", username);
		session.setAttribute("password",password);
		session.setAttribute("platnumber", platnumber);
		session.setAttribute("ratifydate", ratifydate);
		session.setAttribute("ratifynumber", ratifynumber);
		session.setAttribute("tec", tec);
		BasicMessage userBean= new BasicMessage();
		userBean.setUsername(username);
		userBean.setPassword(password);
		userBean.setPlatnumber(platnumber);
		userBean.setRatifydate(ratifydate);
		userBean.setRatifynumber(ratifynumber);
		userBean.setTec(tec);
		CreateDao createDao=new CreateDao();
		try {
			createDao.add(userBean);//调用函数添加
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("/innovate/pages/Login.html");//添完成后跳转到login.html
		PrintWriter out = response.getWriter();
		out.println("添加操作完成");
		/*out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    <h>  </h> ");
		
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();*/
	}

}
