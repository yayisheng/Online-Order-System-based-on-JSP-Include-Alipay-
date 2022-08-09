package com.itbaizhan.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.itbaizhan.util.DBConn;


public class AdminLoginBean {
	
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	ArrayList al = new ArrayList();
	
	public int login(String name,String pwd){
		int temp = 0;
		conn = DBConn.getConn();
		try {
			st = conn.createStatement();
			rs = st.executeQuery("select * from admin where name='"+name+"'");
			if(rs.next()){
				String id = rs.getString("id");
				String tname = rs.getString("name");
				String tpwd = rs.getString("pwd");			
				if(pwd.equals(tpwd)){
					temp = 1;
					al.add(id);
					al.add(tname);
					al.add(tpwd);
				}else{
					temp = 2;
				}
			}else{
				temp = 3;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBConn.close(conn,st,rs);
		}
		return temp;
	}
	
	public ArrayList getArrayLst(){
		return al;
	}

}
