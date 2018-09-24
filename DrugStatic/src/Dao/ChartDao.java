package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Bean.ChartBean;
import Util.DBUtil;

public class ChartDao {
	public ResultSet result(String sql){
		Connection connection=DBUtil.getConnection();
		PreparedStatement preparedStatement =null;
		ResultSet resultSet=null;
		try {
			preparedStatement=connection.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			resultSet=preparedStatement.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return resultSet;
		
	}
	public String[] StaticName(){
		String sql="select DISTINCT(type) from drugtb";
		
		ResultSet resultSet=null;
		int lines=0;
		int i=0;
		resultSet=this.result(sql);
		try {
			resultSet.last();
			lines=resultSet.getRow();
			System.out.print(lines);
			resultSet.beforeFirst();
			String staticname[]=new String[lines];
		while(resultSet.next()){
			staticname[i]=resultSet.getString("type");
				System.out.print(staticname[i]);
				i++;
			}
		return staticname;//返回type数组
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	@SuppressWarnings("null")
	public List<ChartBean> StaticNumber(){//返回各类药品的数量和类别
//		Connection connection=DBUtil.getConnection();
//		PreparedStatement preparedStatement=null;
		List<ChartBean> chartBeans=new ArrayList<ChartBean>();
		ChartBean chartBean=null;
		
		
		ResultSet resultSet =null;
		int length=6;//this.StaticName().length;
		String[] drugname=new String[length];
		drugname=this.StaticName();
		int number[] = new int[length];
		String sql="";
		for(int i=0,j=0;i<length;i++,j++){
			
			sql="select sum(countnumber) from drugtb where type='"+drugname[i]+"'";
			resultSet=this.result(sql);
			try {
					resultSet.next();
					//System.out.print(drugname[i]);
					number[j]=resultSet.getInt(1);
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		for(int i=0;i<length;i++){
			System.out.print(drugname[i]);
			System.out.print(number[i]);
			chartBean=new ChartBean();
			chartBean.setTypename(drugname[i].trim());
			chartBean.setTypenumber(number[i]);
			chartBeans.add(chartBean);
		}
		return chartBeans;
		
	}
}
