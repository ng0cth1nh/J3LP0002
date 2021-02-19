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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.City;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class CityDao extends DBContext {
    
    public ArrayList<City> getCities() {
        String sql = "select * from [city]";
        ArrayList<City> cities = new ArrayList<>();
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                cities.add(new City(rs.getString("cid"),
                        rs.getString("name")));
            }

        } catch (SQLException ex) {
            Logger.getLogger(FlightDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cities;
    }
    
}
