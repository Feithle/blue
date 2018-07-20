package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
import Dao.condition;

public class Condition1 extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");

		doPost(request, response);
		// PrintWriter out = response.getWriter();
		// out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		// out.println("<HTML>");
		// out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		// out.println("  <BODY>");
		// out.print("    This is ");
		// out.print(this.getClass());
		// out.println(", using the GET method");
		// out.println("  </BODY>");
		// out.println("</HTML>");
		// out.flush();
		// out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	@SuppressWarnings("resource")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		// String name1 =request.getParameter("name1");
		// System.out.print(name1);、
		String txt_i = request.getParameter("txt_i");
		String txt_1_value1 = request.getParameter("txt_1_value1");// 获取全部的条件
		String txt_2_value1 = request.getParameter("txt_2_value1");
		String txt_3_value1 = request.getParameter("txt_3_value1");
		String txt_4_value1 = request.getParameter("txt_4_value1");
		String txt_5_value1 = request.getParameter("txt_5_value1");
		String txt_6_value1 = request.getParameter("txt_6_value1");
		String txt_2_logical = request.getParameter("txt_2_logical");// 获取全部的逻辑
		String txt_3_logical = request.getParameter("txt_3_logical");
		String txt_4_logical = request.getParameter("txt_4_logical");
		String txt_5_logical = request.getParameter("txt_5_logical");
		String txt_6_logical = request.getParameter("txt_6_logical");
		String txt_1_sel = request.getParameter("txt_1_sel");// 获取全部条件分类
		String txt_2_sel = request.getParameter("txt_2_sel");
		String txt_3_sel = request.getParameter("txt_3_sel");
		String txt_4_sel = request.getParameter("txt_4_sel");
		String txt_5_sel = request.getParameter("txt_5_sel");
		String txt_6_sel = request.getParameter("txt_6_sel");
		String datefrom=request.getParameter("publishdate_from");
		String dateto=request.getParameter("publishdate_to");
		String time1=null;
		String time2=null;
		if(datefrom==""||dateto==""){
			time1="1901-06-01";
			time2="2050-06-12";
		}else{
			time1=datefrom;
			time2=dateto;
		}
//		Date publishdate_from=null;
//		String[] dateDivide1 = time1.split("-");//把String 日期中的——去掉
//		if(dateDivide1.length==3){//如果dateDivide长度=3
//			int year = Integer.parseInt(dateDivide1 [0].trim());//去掉空格  
//		     int month = Integer.parseInt(dateDivide1 [1].trim());  
//		     int day = Integer.parseInt(dateDivide1 [2].trim());  
//		     Calendar c = Calendar.getInstance();//获取一个日历实例  
//		     c.set(year, month-1, day);//设定日历的日期  
//		     publishdate_from = c.getTime();  
//		}
//		
//		Date publishdate_to=null;
//		String[] dateDivide2 = time2.split("-");//把String 日期中的——去掉
//		if(dateDivide2.length==3){//如果dateDivide长度=3
//			int year = Integer.parseInt(dateDivide2 [0].trim());//去掉空格  
//		     int month = Integer.parseInt(dateDivide2 [1].trim());  
//		     int day = Integer.parseInt(dateDivide2 [2].trim());  
//		     Calendar c = Calendar.getInstance();//获取一个日历实例  
//		     c.set(year, month-1, day);//设定日历的日期  
//		     publishdate_to = c.getTime();  
//		}

		String sql=null;
		if (txt_1_sel != null && txt_1_value1 == "" && txt_2_logical != null/********** 0**********/
				&& txt_2_sel != null && txt_2_value1 == "" && txt_3_logical == null
						&& txt_3_sel == null && txt_3_value1 == null
						&& txt_4_logical == null && txt_4_sel == null
						&& txt_4_value1 == null && txt_5_logical == null
						&& txt_5_sel == null && txt_5_value1 == null
						&& txt_6_logical == null && txt_6_sel == null
						&& txt_6_value1 == null) {
					 sql = "select username,tec,platleve,county1,econfirst,subjectfirst,relycomtype from basic_mess where ratifydate  between '"+time1+"' and '"+time2+"'";
				}
		if (txt_1_sel != null && txt_1_value1 != "" && txt_2_logical != null/********** 1 ***********/
		&& txt_2_sel != null && txt_2_value1 == "" && txt_3_logical == null
				&& txt_3_sel == null && txt_3_value1 == null
				&& txt_4_logical == null && txt_4_sel == null
				&& txt_4_value1 == null && txt_5_logical == null
				&& txt_5_sel == null && txt_5_value1 == null
				&& txt_6_logical == null && txt_6_sel == null
				&& txt_6_value1 == null) {
			 sql = "select username,tec,platleve,county1,econfirst,subjectfirst,relycomtype from basic_mess where ("
					+ txt_1_sel + "='" + txt_1_value1 + "') and (ratifydate  between '"+time1+"' and '"+time2+"')";
		}
		if (txt_1_sel != null && txt_1_value1 != "" && txt_2_logical != null/*********** 2 ************/
		&& txt_2_sel != null && txt_2_value1 != "" && txt_3_logical == null
				&& txt_3_sel == null && txt_3_value1 == null
				&& txt_4_logical == null && txt_4_sel == null
				&& txt_4_value1 == null && txt_5_logical == null
				&& txt_5_sel == null && txt_5_value1 == null
				&& txt_6_logical == null && txt_6_sel == null
				&& txt_6_value1 == null) {
			 sql = "select username,tec,platleve,county1,econfirst,subjectfirst,relycomtype from basic_mess where ("
					+ txt_1_sel
					+ "='"
					+ txt_1_value1
					+ "') "
					+ txt_2_logical
					+ " (" + txt_2_sel + "='" + txt_2_value1 + "') and (ratifydate  between '"+time1+"' and '"+time2+"')";
		}
		if (txt_1_sel != null && txt_1_value1 != "" && txt_2_logical != null/*********** 3 ************/
		&& txt_2_sel != null && txt_2_value1 != "" && txt_3_logical != null
				&& txt_3_sel != null && txt_3_value1 != null
				&& txt_4_logical == null && txt_4_sel == null
				&& txt_4_value1 == null && txt_5_logical == null
				&& txt_5_sel == null && txt_5_value1 == null
				&& txt_6_logical == null && txt_6_sel == null
				&& txt_6_value1 == null) {
			 sql = "select username,tec,platleve,county1,econfirst,subjectfirst,relycomtype from basic_mess where ("
						+ txt_1_sel
						+ "='"
						+ txt_1_value1
						+ "') "
						+ txt_2_logical
						+ " ("+ txt_2_sel + "='" + txt_2_value1 + "')  " + txt_3_logical + "  (" + txt_3_sel + "='" + txt_3_value1 + "') and (ratifydate  between '"+time1+"' and '"+time2+"')";
		}
		if (txt_1_sel != null && txt_1_value1 != "" && txt_2_logical != null/*********** 4 ************/
		&& txt_2_sel != null && txt_2_value1 != "" && txt_3_logical != null
				&& txt_3_sel != null && txt_3_value1 != null
				&& txt_4_logical != null && txt_4_sel != null
				&& txt_4_value1 != null && txt_5_logical == null
				&& txt_5_sel == null && txt_5_value1 == null
				&& txt_6_logical == null && txt_6_sel == null
				&& txt_6_value1 == null) {
			sql = "select username,tec,platleve,county1,econfirst,subjectfirst,relycomtype from basic_mess where ("
					+ txt_1_sel
					+ "='"
					+ txt_1_value1
					+ "') "
					+ txt_2_logical
					+ " (" + txt_2_sel + "='" + txt_2_value1 + "')  " + txt_3_logical+"  ("+txt_3_sel+"='"+txt_3_value1+"') "+txt_4_logical+" (" + txt_4_sel + "='" + txt_4_value1 + "') and (ratifydate  between '"+time1+"' and '"+time2+"')";
		}
		if (txt_1_sel != null && txt_1_value1 != "" && txt_2_logical != null/*********** 5 ************/
		&& txt_2_sel != null && txt_2_value1 != "" && txt_3_logical != null
				&& txt_3_sel != null && txt_3_value1 != null
				&& txt_4_logical != null && txt_4_sel != null
				&& txt_4_value1 != null && txt_5_logical != null
				&& txt_5_sel != null && txt_5_value1 != null
				&& txt_6_logical == null && txt_6_sel == null
				&& txt_6_value1 == null) {
			sql = "select username,tec,platleve,county1,econfirst,subjectfirst,relycomtype from basic_mess where ("
					+ txt_1_sel
					+ "='"
					+ txt_1_value1
					+ "') "
					+ txt_2_logical
					+ " (" + txt_2_sel + "='" + txt_2_value1 + "') " + txt_3_logical+"  ("+txt_3_sel+"='"+txt_3_value1+"') "+txt_4_logical+" (" + txt_4_sel + "='" + txt_4_value1 + "') "+txt_5_logical+" (" + txt_5_sel + "='" + txt_5_value1 + "') and (ratifydate  between '"+time1+"' and '"+time2+"')";
		}
		if (txt_1_sel != null && txt_1_value1 != "" && txt_2_logical != null/*********** 6 ************/
		&& txt_2_sel != null && txt_2_value1 != "" && txt_3_logical != null
				&& txt_3_sel != null && txt_3_value1 != null
				&& txt_4_logical != null && txt_4_sel != null
				&& txt_4_value1 != null && txt_5_logical != null
				&& txt_5_sel != null && txt_5_value1 != null
				&& txt_6_logical != null && txt_6_sel != null
				&& txt_6_value1 != null) {
			sql = "select username,tec,platleve,county1,econfirst,subjectfirst,relycomtype from basic_mess where ("
					+ txt_1_sel
					+ "='"
					+ txt_1_value1
					+ "') "
					+ txt_2_logical
					+ " (" + txt_2_sel + "='" + txt_2_value1 + "') " + txt_3_logical+"  ("+txt_3_sel+"='"+txt_3_value1+"') "+txt_4_logical+" (" + txt_4_sel + "='" + txt_4_value1 + "') "+txt_5_logical+" (" + txt_5_sel + "='" + txt_5_value1 + "') "+txt_6_logical+" (" + txt_6_sel + "='" + txt_6_value1 + "') and (ratifydate  between '"+time1+"' and '"+time2+"')";
		}
		List<BasicMessage> users = new ArrayList<BasicMessage>();
		condition cond = new condition();// 定义函数，调用方法

		users = cond.Search(sql);// 执行SQL

		HttpSession session = request.getSession();
		request.setAttribute("users", users);// 获得的数值存入session
		// 跳转至结果界面
		request.getRequestDispatcher("/pages/conditionresult.jsp").forward(
				request, response);
//		String tec = null;
//		String platleve = null;
//		String county1 = null;
//		String econfirst = null;
//		String subjectfirst = null;
//		String relycomtype = null;
//		int number = Integer.parseInt(txt_i);
		// String arr1[]=new String[6];//非空条件
		// String arr2[]=new String[6];//条件
		// String arr3[]=new String[5];//逻辑条件
		// String arr4[]=new String[5];//非空逻辑条件
		//
		// arr2[0]=txt_1_value1;
		// arr2[1]=txt_2_value1;
		// arr2[2]=txt_3_value1;
		// arr2[3]=txt_4_value1;
		// arr2[4]=txt_5_value1;
		// arr2[5]=txt_6_value1;
		//
		// arr3[0]=txt_2_logical;
		// arr3[1]=txt_3_logical;
		// arr3[2]=txt_4_logical;
		// arr3[3]=txt_5_logical;
		// arr3[4]=txt_6_logical;
		//
		// String cond=null;

		// for(int i=0;i<number;i++){
		// arr1[number]=arr2[number];//得到的String 数组就是条件，有数量增减
		//
		// }
		// for(int i=0;i<number;i++){
		// arr4[number]=arr3[number];
		// }
		// if(number==2){
		// String
		// sql="select tec, platleve,county1,econfirst,subjectfirst,relycomtype from basic_mess where tec='"+txt_1_value1+"''"+txt_2_logical+"'platleve='"+arr3[2]+"'";
		// }
		// String
		// sql="select tec, platleve,county1,econfirst,subjectfirst,relycomtype from basic_mess where ";
		// System.out.print(txt_i);
//		 System.out.print(txt_1_value1);
//		 System.out.print(txt_2_value1);
//		 System.out.print(txt_3_value1);
//		 System.out.print(txt_4_value1);
//		 System.out.print(txt_2_logical);
//		 System.out.print(txt_3_logical);
//		 System.out.print(txt_4_logical);
//		 System.out.print(txt_1_sel);
//		 System.out.print(txt_2_sel);
//		 System.out.print(txt_3_sel);
//		 System.out.print(txt_4_sel);
		 System.out.print(time1);
		 System.out.print(time2);

		// String tec =null;
		// String platleve=null;
		// String relycomtype=null;
		//
		// /*查看数据库tec是否已存在*/
		// Connection connection =DBUtil.getConnection();
		// PreparedStatement preparedStatement=null;
		// ResultSet resultSet = null;
		// String sql1 = "select * from conditions ";//sql返回记录中的tec值
		// try {
		// preparedStatement=connection.prepareStatement(sql1);
		// resultSet=preparedStatement.executeQuery();
		// while(resultSet.next()){
		// tec=resultSet.getString("tec");
		// platleve=resultSet.getString("platleve");
		// relycomtype=resultSet.getString("relycomtype");
		// }
		// } catch (SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// DBUtil.close(preparedStatement);
		// DBUtil.close(resultSet);
		// if(tec==null&&platleve==null&&relycomtype==null){//对遍历结果进行判断全为空
		// sql1="insert into conditions (tec) values ('"+name1+"')";//插入第一条tec
		// try {
		// preparedStatement=connection.prepareStatement(sql1);//执行
		// preparedStatement.executeUpdate();
		// } catch (SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// DBUtil.close(preparedStatement);//关闭传输流
		// }else if(tec==null&&relycomtype!=null){//tec为空，其他不为空
		// sql1="update conditions set tec='"+
		// name1+"' where relycomtype='"+relycomtype+"'";//在其他不为空的位置插入tec
		// try {
		//
		// preparedStatement=connection.prepareStatement(sql1);
		// preparedStatement.executeUpdate();
		// } catch (SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// DBUtil.close(preparedStatement);
		// }else if(tec==null&&platleve!=null){//同上
		// sql1="update conditions set tec='"+
		// name1+"' where platleve='"+platleve+"'";//同上
		// try {
		//
		// preparedStatement=connection.prepareStatement(sql1);
		// preparedStatement.executeUpdate();
		// } catch (SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// DBUtil.close(preparedStatement);
		// }else if(tec!=null){//tec不为空
		// sql1="update conditions set tec='"+
		// name1+"' where tec='"+tec+"'";//在tec不为空的地方修改
		// try {
		//
		// preparedStatement=connection.prepareStatement(sql1);
		// preparedStatement.executeUpdate();
		// } catch (SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// DBUtil.close(preparedStatement);
		// }
		// Connection connection1 =DBUtil.getConnection();
		// PreparedStatement preparedStatement1=null;
		// ResultSet resultSet1 = null;
		// String sql11 = "select * from conditions ";//sql返回记录中的tec值
		// try {
		// preparedStatement1=connection1.prepareStatement(sql11);
		// resultSet1=preparedStatement1.executeQuery();
		// while(resultSet1.next()){//重新获得各个条件值
		// tec=resultSet.getString("tec");
		// platleve=resultSet.getString("platleve");
		// relycomtype=resultSet.getString("relycomtype");
		// }
		// } catch (SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// System.out.print(tec);
		// System.out.print(platleve);
		// System.out.print(relycomtype);
		// DBUtil.close(connection1);
		// DBUtil.close(preparedStatement1);
		// //DBUtil.close(resultSet1);
		// Connection connection2=DBUtil.getConnection();
		// PreparedStatement preparedStatement2=null;
		// ResultSet resultSet2 = null;
		// String sql12=null;
		// List<BasicMessage> users =new ArrayList<BasicMessage>();
		// if(platleve==null&&relycomtype==null){
		// sql12 =
		// "select username,tec platleve,relycomtype from basic_mess where tec='"+tec+"' ";//
		// }
		// if(platleve!=null&&relycomtype==null){
		// sql12 =
		// "select username,tec platleve,relycomtype from basic_mess where tec='"+tec+"' and platleve='"+platleve+"' ";//
		// }
		// if(platleve==null&&relycomtype!=null){
		// sql12 =
		// "select username,tec platleve,relycomtype from basic_mess where tec='"+tec+"' and relycomtype='"+relycomtype+"'";//
		// }
		// if(platleve!=null&&relycomtype!=null){
		// sql12 =
		// "select username,tec platleve,relycomtype from basic_mess where tec='"+tec+"' and relycomtype='"+relycomtype+"' and platleve='"+platleve+"'";//
		// }
		// try {
		// preparedStatement2=connection2.prepareStatement(sql12);
		// resultSet2=preparedStatement2.executeQuery();
		// while(resultSet2.next()){
		// BasicMessage basicMessage= new BasicMessage();
		// basicMessage.setUsername(resultSet2.getString("username"));
		// basicMessage.setTec(resultSet2.getString("tec"));
		// basicMessage.setPlatleve(resultSet2.getString("platleve"));
		// basicMessage.setRelycomtype(resultSet2.getString("relycomtype"));
		// users.add(basicMessage);
		// }
		// } catch (SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// //PrintWriter out = response.getWriter();
		// PrintWriter writer = response.getWriter();
		// writer.print("sss");
		// writer.print("<table>");
		// for(int i=0;i<users.size();i++){
		// writer.print("<tr>");
		// writer.print("<td>");
		// writer.print(users.get(i).getUsername());
		//
		// writer.print("</td>");
		// writer.print(users.get(i).getTec());
		// writer.print("<td>");
		// writer.print("</td>");
		// writer.print(users.get(i).getPlatleve());
		// writer.print("<td>");
		// writer.print(users.get(i).getRelycomtype());
		// writer.print("</td>");
		// writer.print("<td>");
		// writer.print("</td>");
		// writer.print("</tr>");
		// }
		// writer.print("</table>");
		//
		// writer.flush();
		// writer.close();

		// //list数组

		// request.getRequestDispatcher("/pages/TableTree.jsp").forward(request,
		// response);
		// PrintWriter out = response.getWriter();
		// out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		// out.println("<HTML>");
		// out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		// out.println("  <BODY>");
		// out.print("    This is ");
		// out.print(this.getClass());
		// out.println(", using the POST method");
		// out.println("  </BODY>");
		// out.println("</HTML>");
		// out.flush();
		// out.close();
	}

}
