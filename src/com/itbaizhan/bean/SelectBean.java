package com.itbaizhan.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.itbaizhan.util.DBConn;

public class SelectBean {
	
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	/** 
	 * @param sql
	 * @param args
	 * @return
	 * 返回多行结果
	 */
	public ArrayList select(String sql,String[] args){
		ArrayList al = new ArrayList();
		conn = DBConn.getConn();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()){
				ArrayList alRow = new ArrayList();
				for(int i = 0;i < args.length;i++){
					alRow.add(rs.getString(args[i]));
				}
				al.add(alRow);
			}
		} catch (SQLException e) {
			// TODO 自动生成 catch 块
			e.printStackTrace();
		} finally{
			DBConn.close(conn,st,rs);
		}
		return al;
	}
	/**
	 * 
	 * @param args
	 * @param sql
	 * @return
	 * 返回一行结果 
	 */
	public ArrayList select(String[] args,String sql){
		ArrayList al = new ArrayList();
		conn = DBConn.getConn();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			rs.next();
				for(int i = 0;i < args.length;i++){
					al.add(rs.getString(args[i]));
				}
		} catch (SQLException e) {
			// TODO 自动生成 catch 块
			e.printStackTrace();
		} finally{
			DBConn.close(conn,st,rs);
		}
		return al;
	}

}
