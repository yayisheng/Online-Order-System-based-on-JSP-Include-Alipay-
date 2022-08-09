package com.itbaizhan.util;

import java.sql.*;
public class DBConn {
    static{
        try{
        	Class.forName("com.mysql.jdbc.Driver");
//        	Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
//          Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        }catch(Exception ex){
            ex.printStackTrace();
        }

    }

    public static Connection getConn(){
        try{
        	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/wldc?useUnicode=true&characterEncoding=utf-8","root","123456");
//        	Connection conn=DriverManager.getConnection("jdbc:microsoft:sqlserver://localhost:1433;databasename=csgl","sa","123");
//       	Connection conn=DriverManager.getConnection("jdbc:odbc:temp");
            return conn;
        }catch(Exception ex){
            ex.printStackTrace();
            return null;
        }
    }
    public static void close(Connection conn,Statement st,ResultSet rs){
    	if(rs!=null){
            try{
                rs.close();
            }catch(SQLException ex){
            }
       }
       if(st!=null){
           try {
               st.close();
           }catch(Exception ex){
           }
       }
       if(conn!=null){
           try{
               conn.close();
           }catch(Exception ex){
           }
       }
    }

}
