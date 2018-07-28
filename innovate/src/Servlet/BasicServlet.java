package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.BasicMessage;
import Dao.BasicMessageDao;

public class BasicServlet extends HttpServlet {

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

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String username=request.getParameter("username");
		String password =request.getParameter("password");
		String platnumber =request.getParameter("platnumber");
		String ratifydate =request.getParameter("ratifydate");
		String ratifynumber =request.getParameter("ratifynumber");
		String tec =request.getParameter("tec");
		String platleve=request.getParameter("platleve");
		String county1=request.getParameter("county1");
		String county2=request.getParameter("county2");
		String county3=request.getParameter("county3");
		String platorg=request.getParameter("platorg");
		String econfirst=request.getParameter("econfirst");
		String econscon=request.getParameter("econscon");
		String econthir=request.getParameter("econthir");
		String subjectfirst=request.getParameter("subjectfirst");
		String subjectscon=request.getParameter("subjectscon");
		String subjectthir=request.getParameter("subjectthir");
		String relycomname=request.getParameter("relycomname");
		String relycomcode=request.getParameter("relycomcode");
		String relycomlegl=request.getParameter("relycomlegl");
		String relycompho=request.getParameter("relycompho");
		String relycomtype=request.getParameter("relycomtype");
		String[] unincom=request.getParameterValues("unincom");
		String unicom =null;
		for(int i=0;i<unincom.length;i++){
			if(unicom==null){
				unicom=unincom[i];
			}
			unicom=unicom+","+unincom[i];
			
		}
		String deanname=request.getParameter("deanname");
		String deangender=request.getParameter("deangender");
		String deanborndate=request.getParameter("deanborndate");
		String deantitl=request.getParameter("deantitl");
		String deanmajor=request.getParameter("deanmajor");
		String deaneducation=request.getParameter("deaneducation");
		String deandegree=request.getParameter("deandegree");
		String deanpho=request.getParameter("deanpho");
		String deanmobil=request.getParameter("deanmobil");
		String deanemail=request.getParameter("deanemail");
		String platwebsite=request.getParameter("platwebsite");
		String platurl=request.getParameter("platurl");
		String platmailing=request.getParameter("platmailing");
		String plataddress=request.getParameter("plataddress");
		BasicMessage basicMessage =new BasicMessage();
		basicMessage.setUsername(username);
		basicMessage.setPassword(password);;
		basicMessage.setPlatnumber(platnumber);
		basicMessage.setRatifydate(ratifydate);
		basicMessage.setRatifynumber(ratifynumber);
		basicMessage.setTec(tec);
		basicMessage.setPlatleve(platleve);
		basicMessage.setCounty1(county1);
		basicMessage.setCounty2(county2);
		basicMessage.setCounty3(county3);
		basicMessage.setPlatorg(platorg);
		basicMessage.setEconfirst(econfirst);
		basicMessage.setEconscon(econscon);
		basicMessage.setEconthir(econthir);
		basicMessage.setSubjectfirst(subjectfirst);
		basicMessage.setSubjectscon(subjectscon);
		basicMessage.setSubjectthir(subjectthir);
		basicMessage.setRelycomname(relycomname);
		basicMessage.setRelycomcode(relycomcode);
		basicMessage.setRelycomlegl(relycomlegl);
		basicMessage.setRelycompho(relycompho);
		basicMessage.setRelycomtype(relycomtype);
		basicMessage.setUnincom(unicom);
		basicMessage.setDeanname(deanname);
		basicMessage.setDeangender(deangender);
		basicMessage.setDeanborndate(deanborndate);
		basicMessage.setDeantitl(deantitl);
		basicMessage.setDeanmajor(deanmajor);
		basicMessage.setDeaneducation(deaneducation);
		basicMessage.setDeandegree(deandegree);
		basicMessage.setDeanpho(deanpho);
		basicMessage.setDeanmobil(deanmobil);
		basicMessage.setDeanemail(deanemail);
		basicMessage.setPlatwebsite(platwebsite);
		basicMessage.setPlaturl(platurl);
		basicMessage.setPlatmailing(platmailing);
		basicMessage.setPlataddress(plataddress);	
		BasicMessageDao basicMessageDao =new BasicMessageDao();
		basicMessageDao.add(basicMessage);
		response.sendRedirect("http://www.cnki.net/");
		
	}

}
