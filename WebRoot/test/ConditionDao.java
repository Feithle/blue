package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.Condition;
import Util.DBUtil;

public class ConditionDao {

	@SuppressWarnings("resource")
	public void add(Condition condition) throws Exception{//数据库中写入条件
		Connection connection =DBUtil.getConnection();	
		String sql = "select count(*) from user_login where username = ?";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userBean.getUsername());
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()){
				if(resultSet.getInt(1)>0){
					throw new Exception();
				}
			}
			sql = "insert into user_login(username,password,platnumber,ratifydate,ratifynumber,tec) value (?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userBean.getUsername());
			preparedStatement.setString(2, userBean.getPassword());
			preparedStatement.setString(3, userBean.getPlatnumber());
			preparedStatement.setString(4, userBean.getRatifydate());
			preparedStatement.setString(5, userBean.getRatifynumber());
			preparedStatement.setString(6, userBean.getTec());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(connection);
			DBUtil.close(preparedStatement);
			DBUtil.close(resultSet);
		}
	}

}
