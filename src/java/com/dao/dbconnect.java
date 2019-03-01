
package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class dbconnect {
    
      public static Statement getConnection(){
     Statement st=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nss","root","");
            st=con.createStatement();
            
        } catch (ClassNotFoundException | SQLException ex) {
           
            System.out.println(ex);
        }
        return st;
    }
}
