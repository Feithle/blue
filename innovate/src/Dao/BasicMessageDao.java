package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Bean.BasicMessage;
import Util.DBUtil;

public class BasicMessageDao {
	public  void add (BasicMessage basicMessage){
		//创建连接
	Connection connection =DBUtil.getConnection();
	PreparedStatement preparedStatement=null;
	ResultSet resultSet =null;
	String sql ="insert into basic_mess values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";	
	try {
		//prepar赋值
		preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, basicMessage.getUsername());
		preparedStatement.setString(2, basicMessage.getPassword());
		preparedStatement.setString(3, basicMessage.getPlatnumber());
		preparedStatement.setString(4, basicMessage.getRatifydate());
		preparedStatement.setString(5, basicMessage.getRatifynumber());
		preparedStatement.setString(6, basicMessage.getTec());
		preparedStatement.setString(7, basicMessage.getPlatleve());
		preparedStatement.setString(8, basicMessage.getCounty1());
		preparedStatement.setString(9, basicMessage.getCounty2());
		preparedStatement.setString(10, basicMessage.getCounty3());
		preparedStatement.setString(11, basicMessage.getPlatorg());
		preparedStatement.setString(12, basicMessage.getEconfirst());
		preparedStatement.setString(13, basicMessage.getEconscon());
		preparedStatement.setString(14, basicMessage.getEconthir());
		preparedStatement.setString(15, basicMessage.getSubjectfirst());
		preparedStatement.setString(16, basicMessage.getSubjectscon());
		preparedStatement.setString(17, basicMessage.getSubjectthir());
		preparedStatement.setString(18, basicMessage.getRelycomname());
		preparedStatement.setString(19, basicMessage.getRelycomcode());
		preparedStatement.setString(20, basicMessage.getRelycomlegl());
		preparedStatement.setString(21, basicMessage.getRelycompho());
		preparedStatement.setString(22, basicMessage.getRelycomtype());
		preparedStatement.setString(23, basicMessage.getUnincom());
		preparedStatement.setString(24, basicMessage.getDeanname());
		preparedStatement.setString(25, basicMessage.getDeangender());
		preparedStatement.setString(26, basicMessage.getDeanborndate());
		preparedStatement.setString(27, basicMessage.getDeantitl());
		preparedStatement.setString(28, basicMessage.getDeanmajor());
		preparedStatement.setString(29, basicMessage.getDeaneducation());
		preparedStatement.setString(30, basicMessage.getDeandegree());
		preparedStatement.setString(31, basicMessage.getDeanpho());
		preparedStatement.setString(32, basicMessage.getDeanmobil());
		preparedStatement.setString(33, basicMessage.getDeanemail());
		preparedStatement.setString(34, basicMessage.getPlatwebsite());
		preparedStatement.setString(35, basicMessage.getPlaturl());
		preparedStatement.setString(36, basicMessage.getPlatmailing());
		preparedStatement.setString(37, basicMessage.getPlataddress());
		preparedStatement.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	DBUtil.close(connection);
	DBUtil.close(preparedStatement);
	DBUtil.close(resultSet);
	}

	//登录检测
	public BasicMessage Login(String username){
		Connection connection =DBUtil.getConnection();
		Statement statement=null;
		ResultSet resultSet=null;
		BasicMessage basicMessage =new BasicMessage();
		String sql= "select password from basic_mess where username='"+username+"'";
		try {
			statement=connection.createStatement();
			resultSet=statement.executeQuery(sql);
			while(resultSet.next()){
				basicMessage.setUsername(resultSet.getString("username"));
				basicMessage.setPassword(resultSet.getString("password"));
			}
			DBUtil.close(connection);
			statement.close();
			DBUtil.close(resultSet);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return basicMessage;//返回basicMessage
		} 
	
}
