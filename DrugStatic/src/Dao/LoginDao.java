package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Util.DBUtil;
import Bean.UserBean;

public class LoginDao {

	public UserBean Login(String username) throws Exception{
		Connection connection =DBUtil.getConnection();		
		//PreparedStatement preparedStatement =null;
		Statement statement=null;
		ResultSet resultSet =null;
		String sql="select * from usertb where username ='"+username+"'";//验证该用户是否存在
		//System.out.print(username);
		UserBean userBean=null;
		try {
//			
//			preparedStatement=connection.prepareStatement(sql);
		    statement=connection.createStatement();
//			//preparedStatement.setString(1, );
//			resultSet=preparedStatement.executeQuery();
		    resultSet=statement.executeQuery(sql);
			if(resultSet.next()){
			userBean=new UserBean();
			userBean.setUsername(resultSet.getString("username"));
			userBean.setPassword(resultSet.getString("password"));
			userBean.setPhonenumber(resultSet.getString("phonenumber"));
			userBean.setEmail(resultSet.getString("email"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return userBean;
		
	}
}
