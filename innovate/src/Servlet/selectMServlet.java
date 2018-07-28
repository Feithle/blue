package com.severlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.domain;
import com.user.project;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class selectMServlet
 */
@WebServlet("/selectMServlet")
public class selectMServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public selectMServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		domain domain = new domain();

		try {
//		String filed = null;
		String[] fileds = request.getParameterValues("platformLevel");//省级国家级
		String[] chos = request.getParameterValues("cho");//并且或者
		String[] ss = request.getParameterValues("s");//下拉框
		String[] seles = request.getParameterValues("sele");//输入框
		String sql = "select * from t_project where 1=1";
		if(fileds.length==1||fileds.length==3) {
			for(int i = 0;i < seles.length; i++) {
				if(seles[i]==null||"".equals(seles[i])) {
					sql+="";
				}
				else sql+=" "+chos[i]+" "+ss[i]+" like '%"+seles[i]+"%' ";
			}
		}
		if(fileds.length==2) {
			sql+=" and platformLevel = '"+fileds[1]+"' ";
			for(int i = 0;i < seles.length; i++) {
				if(seles[i]==null||"".equals(seles[i])) {
					sql+="";
				}
				else sql+=" "+chos[i]+" "+ss[i]+" like '%"+seles[i]+"%' ";
			}
		}
		System.out.println(sql);
		List<project> lists = domain.loadSelectM(sql);
		PrintWriter out = response.getWriter(); // 向客户端发送字符数据
		response.setContentType("text/text"); // 设置请求以及响应的内容类型以及编码方式
		response.setCharacterEncoding("UTF-8");
		JSONArray json = JSONArray.fromObject(lists); // 将newsList对象转换为json对象
		String str = json.toString(); // 将json对象转换为字符串
		out.write(str);                  //将str字符传输到前台   
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
