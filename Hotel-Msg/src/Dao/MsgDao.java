package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import Util.DBUtil;
import Value.ValueMsg;
public class MsgDao {
	public void add(ValueMsg addmsg) {
		PreparedStatement preparedStatement = null;
		//ResultSet resultSet = null;
		Connection connection = DBUtil.getConnection();
		String sql = "insert into t_haveMenu(菜品名,单价,数量,总价) value(?,?,?,?)";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,addmsg.getDishname());
			preparedStatement.setInt(2,addmsg.getPrice());
			preparedStatement.setInt(3,addmsg.getNumber());
			preparedStatement.setInt(4,addmsg.getSumPrice());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
	}
	public void AddEvaluate(ValueMsg valuemsg) {
		PreparedStatement preparedStatement = null;
		Connection connection = DBUtil.getConnection();
		String sql = "insert into t_evaluate(Evaluate) value(?)";
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,valuemsg.getEvaluate());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
	}
	public void delete(int id) {
		Connection connection = DBUtil.getConnection();
		String sql = "delete from t_havemenu where 订单编号 = ?";
		PreparedStatement preparedStatement = null;
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
	}
	public void deleteMath() {
		//每次运行前清空表的操作
		Connection connection = DBUtil.getConnection();
		Statement statement=null;
		try{
			statement = (Statement) connection.createStatement();
			statement.executeUpdate("delete from t_havemenu");
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			DBUtil.close(connection);
		}
	}
	public List<ValueMsg> loadHaveMenu() {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from t_havemenu";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<ValueMsg> valuemsgs = new ArrayList<ValueMsg>();
		ValueMsg valuemsg = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				valuemsg = new ValueMsg();
				valuemsg.setDishname(resultSet.getString("菜品名"));
				valuemsg.setPrice(resultSet.getInt("单价"));
				valuemsg.setId(resultSet.getInt("订单编号"));
				valuemsg.setSumPrice(resultSet.getInt("总价"));
				valuemsg.setNumber(resultSet.getInt("数量"));
				valuemsgs.add(valuemsg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  valuemsgs;
	}
	public List<ValueMsg> loadSignDish() {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from t_signdish";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<ValueMsg> valuemsgs = new ArrayList<ValueMsg>();
		ValueMsg valuemsg = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				valuemsg = new ValueMsg();
				valuemsg.setDishname(resultSet.getString("Dishname"));
				valuemsg.setPrice(resultSet.getInt("Price"));
				valuemsg.setMaterial(resultSet.getString("Material"));
				valuemsg.setIntroduce(resultSet.getString("Introduce"));
				valuemsg.setPhoto(resultSet.getString("Photo"));
				valuemsgs.add(valuemsg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  valuemsgs;
	}
	public List<ValueMsg> loadFriedDish() {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from t_frieddish";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<ValueMsg> valuemsgs = new ArrayList<ValueMsg>();
		ValueMsg valuemsg = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				valuemsg = new ValueMsg();
				valuemsg.setDishname(resultSet.getString("Dishname"));
				valuemsg.setPrice(resultSet.getInt("Price"));
				valuemsg.setMaterial(resultSet.getString("Material"));
				valuemsg.setIntroduce(resultSet.getString("Introduce"));
				valuemsg.setPhoto(resultSet.getString("Photo"));


				valuemsgs.add(valuemsg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  valuemsgs;
	}
	public List<ValueMsg> loadHunanDish() {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from t_hunandish";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<ValueMsg> valuemsgs = new ArrayList<ValueMsg>();
		ValueMsg valuemsg = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				valuemsg = new ValueMsg();
				valuemsg.setDishname(resultSet.getString("Dishname"));
				valuemsg.setPrice(resultSet.getInt("Price"));
				valuemsg.setMaterial(resultSet.getString("Material"));
				valuemsg.setIntroduce(resultSet.getString("Introduce"));
				valuemsg.setPhoto(resultSet.getString("Photo"));

				valuemsgs.add(valuemsg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  valuemsgs;
	}
	public List<ValueMsg> loadColdDish() {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from t_colddish";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<ValueMsg> valuemsgs = new ArrayList<ValueMsg>();
		ValueMsg valuemsg = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				valuemsg = new ValueMsg();
				valuemsg.setDishname(resultSet.getString("Dishname"));
				valuemsg.setPrice(resultSet.getInt("Price"));
				valuemsg.setMaterial(resultSet.getString("Material"));
				valuemsg.setIntroduce(resultSet.getString("Introduce"));
				valuemsg.setPhoto(resultSet.getString("Photo"));

				valuemsgs.add(valuemsg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  valuemsgs;
	}
	public List<ValueMsg> loadStapleFood() {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from t_staplefood";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<ValueMsg> valuemsgs = new ArrayList<ValueMsg>();
		ValueMsg valuemsg = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				valuemsg = new ValueMsg();
				valuemsg.setDishname(resultSet.getString("Dishname"));
				valuemsg.setPrice(resultSet.getInt("Price"));
				valuemsg.setMaterial(resultSet.getString("Material"));
				valuemsg.setIntroduce(resultSet.getString("Introduce"));
				valuemsg.setPhoto(resultSet.getString("Photo"));

				valuemsgs.add(valuemsg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  valuemsgs;
	}
	public List<ValueMsg> loadDrink() {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from t_dirnk";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<ValueMsg> valuemsgs = new ArrayList<ValueMsg>();
		ValueMsg valuemsg = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				valuemsg = new ValueMsg();
				valuemsg.setDishname(resultSet.getString("Dishname"));
				valuemsg.setPrice(resultSet.getInt("Price"));
				valuemsg.setMaterial(resultSet.getString("Material"));
				valuemsg.setIntroduce(resultSet.getString("Introduce"));
				valuemsg.setPhoto(resultSet.getString("Photo"));

				valuemsgs.add(valuemsg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  valuemsgs;
	}
	public ValueMsg load(String dishname){
		Connection connection=DBUtil.getConnection();
		ValueMsg valueMsg=null;
		String sql="select * from t_colddish";
		if(dishname==null||"".equals(dishname)){
			sql+="";
		}
			else{
				sql+="where DishName like '%"+dishname+"%'";
			}
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		try{
		preparedStatement=connection.prepareStatement(sql);
		preparedStatement.setString(1, dishname);
		resultSet=preparedStatement.executeQuery();
		while(resultSet.next()){
			ValueMsg valueMsg=new ValueMsg();
			valueMsg.setDishname(resultSet.getString("DishName"));
			valueMsg.setId(resultSet.getInt("Id"));
			valueMsg.setIntroduce(resultSet.getString("Introduce"));
			valueMsg.setPrice(resultSet.getInt("Price"));
			valueMsg.setPhoto(resultSet.getString("Photo"));
			valueMsg.setMaterial(resultSet.getString("Material"));
		}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return valueMsg;
		}
	
}
