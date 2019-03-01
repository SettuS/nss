
package com.nss.services;

import com.dao.dbconnect;
import java.sql.ResultSet;
import java.sql.Statement;

public class User {

    private String username;
    private String password;
    private String repassword;
    private String email;
    private Long phno;
    private String error;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
     public String getRePassword() {
        return repassword;
    }

    public void setRePassword(String repassword) {
        this.repassword = repassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getPhno() {
        return phno;
    }

    public void setPhno(Long phno) {
        this.phno = phno;
    }
    
    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
    
    
    public boolean validateUser() {
        Statement st = dbconnect.getConnection();
        try{
             ResultSet rs = st.executeQuery("select * from users where username='"+getUsername()+"' and password='"+getPassword()+"' ");
            if(rs.next()){
                return true;
            }
        }catch(Exception e){
            setError(e.getMessage());
        }
        return false;
    }

    public boolean save() {
        try{  
             Statement st = dbconnect.getConnection();
             System.out.println(getUsername());
             int res = st.executeUpdate("insert into users(username,password,email,phno) values('"+getUsername()+"','"+getPassword()+"','"+getEmail()+"','"+getPhno()+"') ");
             if(res>=0){
                 return true;
             }
        }catch(Exception e){
            setError(e.getMessage());
        }
        return false;
    }
}
