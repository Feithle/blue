package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Bean.BasicMessage;
import Util.DBUtil;

public class condition {

	//返回list数组，参数是sql
	public List<BasicMessage> Search(String sql){
	//建立连接
		Connection connection = DBUtil.getConnection();
		//传输集
		Statement statement=null;
		//结果集
		ResultSet resultSet =null;
		//接收体list 数组，以BasicMessage为参
		List<BasicMessage> users =new ArrayList<BasicMessage>();
		try {
			//
			statement =connection.createStatement();
			resultSet=statement.executeQuery(sql);
			while(resultSet.next()){
				BasicMessage user =new BasicMessage();
				user.setUsername(resultSet.getString("username"));
				user.setTec(resultSet.getString("tec"));
				user.setPlatleve(resultSet.getString("platleve"));
				user.setCounty1(resultSet.getString("county1"));
				user.setEconfirst(resultSet.getString("econfirst"));
				user.setSubjectfirst(resultSet.getString("subjectfirst"));
				user.setRelycomtype(resultSet.getString("relycomtype"));
				users.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return users;
		
	}

}
