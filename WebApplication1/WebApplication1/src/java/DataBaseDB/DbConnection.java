package DataBaseDB;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author test
 */
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
public class DbConnection {
    String UserName = "root";
    String PassWord = "";
    String DBName = "student";
    String URL = "jdbc:mysql://localhost:3306/student?zeroDateTimeBehavior=convertToNull";
    Statement st;
    public void ConnectionData(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection(URL, UserName, PassWord);
             st = cn.createStatement();
            
        } catch (Exception ex) {
            Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    public boolean LoginCheck(String UserName , String Password){
        try {
            ResultSet rs =  st.executeQuery("Select * From stud_reg where sname ='"+UserName+"' and spassword = '"+Password+"'");
            if (rs.next()){
            return true;
            }else{
            return false ;
            } 
        } catch (SQLException ex) {
            Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
         return false;
    }
}
