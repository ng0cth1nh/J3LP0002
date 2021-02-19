/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class UserDao extends DBContext {

    public User getUser(String email, String password) {
        String sql = "select * from [User] where [email]= ? and [password]= ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new User(rs.getString("uid"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("firstName"),
                        rs.getString("lastName"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String insertUser(User u) {

        String sql = "INSERT INTO [dbo].[User]\n"
                + "           ([uid]\n"
                + "           ,[email]\n"
                + "           ,[password]\n"
                + "           ,[firstName]\n"
                + "           ,[lastName]\n"
                + "           ,[address]\n"
                + "           ,[phone]\n"
                + "           ,[sex]\n"
                + "           ,[age]\n"
                + "           ,[cardNumber])\n"
                + "     VALUES\n"
                + "           (?"
                + "           ,?"
                + "           ,?"
                + "           ,?"
                + "           ,?"
                + "           ,?"
                + "           ,?"
                + "           ,?"
                + "           ,?"
                + "           ,?)";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, u.getId());
            st.setString(2, u.getEmail());
            st.setString(3, u.getPassword());
            st.setString(4, u.getFirstName());
            st.setString(5, u.getLastName());
            st.setString(6, u.getAddress());
            st.setString(7, u.getPhone());
            st.setBoolean(8, u.isSex());
            st.setInt(9, u.getAge());
            st.setString(10, u.getCardNumber());
            st.executeUpdate();
            return "Register successfully!";
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            return ex.getMessage();
        }
    }

    public String checkExist(String email) {
        String sql = "select * from [User] where [email]= ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getString("password");
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
    public boolean checkIdExisted(String id) {
        String sql = "select * from [User] where [uid]= ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
               return true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public String checkUserAccount(String email, String password) {
        String pass = checkExist(email);
        if (pass == null) {
            return "Email is incorrect!";
        } else if (!pass.equals(password)) {
            return "Wrong password";
        }
        return null;
    }
}
