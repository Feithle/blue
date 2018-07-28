package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.BasicMessage;
import Dao.BasicMessageDao;
import Dao.TreeDao;

public class TreeBase extends HttpServlet {

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

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		doPost(request, response);
//		PrintWriter out = response.getWriter();
//		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
//		out.println("<HTML>");
//		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
//		out.println("  <BODY>");
//		out.print("    This is ");
//		out.print(this.getClass());
//		out.println(", using the GET method");
//		out.println("  </BODY>");
//		out.println("</HTML>");
//		out.flush();
//		out.close();
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

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String sql=null;
		String Tec[] =new String[16];
		Tec[1]="电子信息";Tec[3]="生物与新医药";Tec[5]="航空航天";Tec[7]="新材料";
		Tec[9]="高技术服务";Tec[11]="新能源与节能";Tec[13]="资源与环境";Tec[15]="先进制造与自动化";
		String idnum=request.getParameter("idnum");
		String Sqlleve=request.getParameter("namenum");
		String Sqltec=null;
		int idnumber=Integer.parseInt(idnum);
		if(idnumber%2==0){
			Sqltec=Tec[idnumber-1];//如果是偶数，获得领域名
			//将得到的领域名与级别组合成SQL语句
			sql="select username,platnumber,tec,platleve from basic_mess where tec='"+Sqltec+"'and platleve='"+Sqlleve +"' ";
		}else{//是单数
			Sqltec=Tec[idnumber];
			//只存在领域名，name和数组对应的领域名相同，SQL:
		 sql="select username,platnumber,tec,platleve from basic_mess where tec='"+Sqltec+"'";
		}
		//测试输出
		System.out.print(sql);
		//System.out.print(Sqlleve);
		//list数组
		List<BasicMessage> users=new ArrayList<BasicMessage>();
		TreeDao treeDao =new TreeDao();//定义函数，调用方法
		users=treeDao.Search(sql);//执行SQL
		//HttpSession session =request.getSession();
		request.setAttribute("users", users);//获得的数值存入session
		//跳转至结果界面
		//response.sendRedirect("/innovate/pages/tabletreeresult.jsp");
		request.getRequestDispatcher("/pages/tabletreeresult.jsp").forward(request, response);
		
//		PrintWriter out = response.getWriter();
//		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
//		out.println("<HTML>");
//		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
//		out.println("  <BODY>");
//		out.print("    This is ");
//		out.print(this.getClass());
//		out.println(", using the POST method");
//		out.println("  </BODY>");
//		out.println("</HTML>");
//		out.flush();
//		out.close();
	}

}
