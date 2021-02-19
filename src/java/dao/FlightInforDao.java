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
import model.FlightInfor;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class FlightInforDao extends DBContext {

    public FlightInfor getFlightInfor(String from, String to) {
        String sql = "select * from [Flight Infor]"
                + "where [from]= ? and [to] = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, from);
            st.setString(2, to);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new FlightInfor(rs.getString("fiid"),
                        rs.getString("from"),
                        rs.getString("to"),
                        rs.getString("departName"),
                        rs.getString("returnName"),
                        rs.getFloat("price"),
                        rs.getTime("hour"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(FlightInforDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
