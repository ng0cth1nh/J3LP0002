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
import model.Flight;
import model.FlightInfor;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class FlightDao extends DBContext {
    
    public Flight getFlight(String uid, String code) {
        String sql = "select * from Flight f\n"
                + "inner join [Flight Infor] fi on f.fiid = fi.fiid\n"
                + "and f.uid = ? and f.code = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, uid);
            st.setString(2, code);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                FlightInfor flightInfor = 
                        new FlightInfor(
                        rs.getString("fiid"),
                        rs.getString("from"),
                        rs.getString("to"),
                        rs.getString("departName"),
                        rs.getString("returnName"),
                        rs.getFloat("price"),
                        rs.getTime("hour"),
                        rs.getDate("travelDate"),
                        rs.getTime("departTime"),
                        rs.getTime("arrivalTime"));
                
                 return new Flight(
                         rs.getString("fid"), 
                         rs.getString("code"),
                         rs.getDate("issueDate"),
                         rs.getBoolean("isOneway"),
                         flightInfor);

            }
            
        } catch (SQLException ex) {
            Logger.getLogger(FlightDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
