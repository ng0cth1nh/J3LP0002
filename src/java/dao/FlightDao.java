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
import java.sql.Time;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Flight;
import model.FlightInfor;
import util.Util;

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
                //check code case sensitive.
                if (!code.equals(rs.getString("code"))) {
                    return null;
                }
                FlightInfor flightInfor
                        = new FlightInfor(
                                rs.getString("fiid"),
                                rs.getString("from"),
                                rs.getString("to"),
                                rs.getString("departName"),
                                rs.getString("returnName"),
                                rs.getFloat("price"),
                                Util.parseTime(rs.getTime("hour")),
                                rs.getDate("travelDate"),
                                Util.parseTime(rs.getTime("departTime")),
                                Util.parseTime(rs.getTime("arrivalTime")));

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

    public ArrayList<Flight> getAllFlight(String uid) {
        ArrayList<Flight> flights = new ArrayList<>();
        String sql = "select * from Flight f\n"
                + "inner join [Flight Infor] fi on f.fiid = fi.fiid\n"
                + "and f.uid = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, uid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                FlightInfor flightInfor
                        = new FlightInfor(
                                rs.getString("fiid"),
                                rs.getString("from"),
                                rs.getString("to"),
                                rs.getString("departName"),
                                rs.getString("returnName"),
                                rs.getFloat("price"),
                                Util.parseTime(rs.getTime("hour")),
                                rs.getDate("travelDate"),
                                Util.parseTime(rs.getTime("departTime")),
                                Util.parseTime(rs.getTime("arrivalTime")));

                flights.add(new Flight(
                        rs.getString("fid"),
                        rs.getString("code"),
                        rs.getDate("issueDate"),
                        rs.getBoolean("isOneway"),
                        flightInfor));

            }

        } catch (SQLException ex) {
            Logger.getLogger(FlightDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return flights;
    }

    public boolean checkIdExist(String id) {
        String sql = "select * from Flight where fid = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(FlightDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean checkCodeExist(String code) {
        String sql = "select * from Flight where code = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, code);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(FlightDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public void insertFlight(Flight f, String uid) {

        String sql = "INSERT INTO [dbo].[Flight]\n"
                + "           ([fid]\n"
                + "           ,[code]\n"
                + "           ,[uid]\n"
                + "           ,[fiid]\n"
                + "           ,[issueDate]\n"
                + "           ,[travelDate]\n"
                + "           ,[isOneway]\n"
                + "           ,[departTime]\n"
                + "           ,[arrivalTime])\n"
                + "     VALUES\n"
                + "           (?"
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
            st.setString(1, f.getId());
            st.setString(2, f.getCode());
            st.setString(3, uid);
            st.setString(4, f.getFlightInfor().getId());
            st.setDate(5, f.getIssueDate());
            st.setDate(6, f.getFlightInfor().getTravelDate());
            st.setBoolean(7, f.isIsOneway());
            st.setTime(8, Time.valueOf(f.getFlightInfor().getDepartTime()));
            st.setTime(9, Time.valueOf(f.getFlightInfor().getArrivalTime()));
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
