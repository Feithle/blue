package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.BasicMessage;
import Util.DBUtil;

public class ChartDao {
	

public String[] Static() {
	Connection connection = DBUtil.getConnection();
	//准备sql语句
	String Tec[]=new String[8];
	Tec[0]="电子信息";
	Tec[1]="生物与新医药";
	Tec[2]="航空航天";
	Tec[3]="新材料";
	Tec[4]="高技术服务";
	Tec[5]="新能源与节能";
	Tec[6]="资源与环境";
	Tec[7]="先进制造与自动化";
	for(int i=0;i<8;i++){//输出测试
	System.out.print(Tec[i]);	
	}
	String Num[]=new String[8];
	//创建语句传输对象
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	for(int i=0;i<8;i++){
		String sql = "select username from basic_mess  where tec='"+Tec[i]+"' ";
		/***/
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			resultSet.last();
			Num[i]=String.valueOf(resultSet.getRow());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		DBUtil.close(connection);
		DBUtil.close(preparedStatement);
		DBUtil.close(resultSet);
			
	
	/***/
	return  Num;
}

}
