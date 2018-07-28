package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Util.DBUtil;
import Bean.BasicMessage;
import Dao.BasicMessageDao;
import Dao.TreeDao;

public class Condition2 extends HttpServlet {

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
	@SuppressWarnings("resource")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String name2 =request.getParameter("name2");
		String tec =null;
		String platleve=null;
		String relycomtype=null;
		
			/*查看数据库tec是否已存在*/
			Connection connection =DBUtil.getConnection();
			PreparedStatement preparedStatement=null;
			ResultSet resultSet = null;
			String sql1 = "select * from conditions ";//sql返回记录中的tec值
			try {
				preparedStatement=connection.prepareStatement(sql1);
				resultSet=preparedStatement.executeQuery();
				while(resultSet.next()){
					tec=resultSet.getString("tec");
					platleve=resultSet.getString("platleve");
					relycomtype=resultSet.getString("relycomtype");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			DBUtil.close(preparedStatement);
			DBUtil.close(resultSet);
			if(tec==null&&platleve==null&&relycomtype==null){//对遍历结果进行判断全为空
				sql1="insert into conditions (platleve) values ('"+name2+"')";//插入第一条platleve
				try {
					preparedStatement=connection.prepareStatement(sql1);//执行
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				DBUtil.close(preparedStatement);//关闭传输流
			}else if(platleve==null&&tec!=null){//platleve为空，其他不为空
				sql1="update conditions set platleve='"+ name2+"' where tec='"+tec+"'";//在其他不为空的位置插入tec
				try {
					
					preparedStatement=connection.prepareStatement(sql1);
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				DBUtil.close(preparedStatement);
			}else if(platleve==null&&relycomtype!=null){//同上
				sql1="update conditions set platleve='"+ name2+"' where relycomtype='"+relycomtype+"'";//同上
				try {
					
					preparedStatement=connection.prepareStatement(sql1);
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				DBUtil.close(preparedStatement);
			}else if(platleve!=null){//platleve不为空
				sql1="update conditions set platleve='"+ name2+"' where platleve='"+platleve+"'";//在platleve不为空的地方修改
				try {
					
					preparedStatement=connection.prepareStatement(sql1);
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				DBUtil.close(preparedStatement);
			}
			
		
		
		System.out.print(name2);
//		//list数组
		
		//request.getRequestDispatcher("/pages/TableTree.jsp").forward(request, response);
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
