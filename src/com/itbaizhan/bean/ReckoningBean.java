package com.itbaizhan.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import com.itbaizhan.util.DBConn;


public class ReckoningBean {
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	Boolean autoCommit = false; 
	int temp = 0;
	
	public int insert(ArrayList al,String id){
		int i = 0;
		conn = DBConn.getConn();
		try {
			autoCommit = conn.getAutoCommit();
			conn.setAutoCommit(false);
			SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd kk:mm",Locale.getDefault());
			Date currentDate = new Date();
			String lastdate = formatter.format(currentDate);
			st = conn.createStatement();
			for(i = 0;i < al.size();i++){
				ArrayList alRow = (ArrayList)al.get(i);
				st.executeUpdate("update books set storage=storage-"+alRow.get(3)+",sums1=sums1+"+alRow.get(3)+" where id='"+alRow.get(0)+"'");
				st.executeUpdate("insert into orders(userid,bookid,booksum,times) values('"+id+"','"+alRow.get(0)+"','"+alRow.get(3)+"','"+lastdate+"')");
			}
			if(i == al.size()){
				conn.commit();
			}
		} catch (SQLException e) {
			// TODO 自动生成 catch 块
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO 自动生成 catch 块
				e1.printStackTrace();
			}
			e.printStackTrace();
			temp = -1;			
		} finally{
			try {
				conn.setAutoCommit(autoCommit);
			} catch (SQLException e) {
				// TODO 自动生成 catch 块
				e.printStackTrace();
			}
			DBConn.close(conn,st,rs);
		} 
		return temp;
	}
}
