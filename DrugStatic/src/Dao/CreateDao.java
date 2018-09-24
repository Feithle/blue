package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Util.DBUtil;
import Bean.UserBean;

public class CreateDao {
	public void add (UserBean userBean) throws Exception{
		Connection connection =DBUtil.getConnection();
		PreparedStatement preparedStatement =null;
		ResultSet resultSet =null;
		String sql = "select * from usertb where username= ?";
		try {
			preparedStatement =connection.prepareStatement(sql);
			preparedStatement.setString(1, userBean.username);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				if(resultSet.getInt(1)>0){
					throw new Exception();
				}
			}
			sql = "insert into usertb (username,password,phonenumber,email) values (?,?,?,?)";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userBean.getUsername());
			preparedStatement.setString(2, userBean.getPassword());
			preparedStatement.setString(3, userBean.getPhonenumber());
			preparedStatement.setString(4, userBean.getEmail());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void update(UserBean userBean){
		Connection connection=DBUtil.getConnection();
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		String sql="update usertb set phonenumber='"+userBean.getPhonenumber()+"' , email='"+userBean.getEmail()+"' where username='"+userBean.getUsername()+"' ";
		try {
			preparedStatement=connection.prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
