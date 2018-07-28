package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class DBUtil{
 static
    {
        try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();// 加载Oracle驱动程序
            System.out.println("oracle驱动程序加载中！");
        }
        catch(InstantiationException e1)
        {
            System.out.println("实例异常");
        }
        catch(IllegalAccessException e2)
        {
            System.out.println("访问异常");
        }
        catch(ClassNotFoundException e3)
        {
            System.out.println("MySQL驱动类找不到");
        }
		
    }

    /***
     * 返回一个数据库连接
     */     
    public static Connection getConnection()
    {
        Connection connection = null;// 创建一个数据库连接
        try
        {
            System.out.println("开始尝试连接数据库！");
            String url = "jdbc:oracle:thin:@localhost:1521:orcl";//Oracle的默认数据库名
            String user = "SYSTEM";// 系统默认的用户名
            String password = "lqy";// 安装时设置的密码
            connection = DriverManager.getConnection(url, user, password);// 获取连接
            System.out.println(url);
            System.out.println("用户名："+user+"\t"+"密码：******");
            System.out.println("数据库连接成功！");
            return connection;
        }
        catch (Exception e)
        {
            e.printStackTrace();
            return null;
        }
    }
    public static void close(Connection connection ) {
		try {
			if (connection != null) {
				connection.close();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void close(PreparedStatement preparedStatement ) {
		try {
			if (preparedStatement != null) {
				preparedStatement.close();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void close(ResultSet resultSet ) {
		try {
			if (resultSet != null) {
				resultSet.close();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
}