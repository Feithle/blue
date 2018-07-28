package Dao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Util.DBUtil;
import Bean.BasicMessage;

public class LoginDao {		

	@SuppressWarnings("null")
	public BasicMessage check(String username, String password) {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
	
		String sql = "select * from basic_mess  where username = ?";
		//创建语句传输对象
		int i=0;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		BasicMessage userBean = null;
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			resultSet = preparedStatement.executeQuery();
		
			while(resultSet.next()) {
				i=i+1;
				userBean =new BasicMessage();
				userBean.setUsername(resultSet.getString("username"));
				userBean.setPassword(resultSet.getString("password"));
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(connection);
			DBUtil.close(preparedStatement);
			DBUtil.close(resultSet);
		}
	
			
		return userBean;
	
	}
}
