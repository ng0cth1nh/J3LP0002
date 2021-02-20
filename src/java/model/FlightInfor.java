/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.time.LocalTime;
import util.Util;


/**
 *
 * @author Vu Ngoc Thinh
 */
public class FlightInfor {

    private String id;
    private String fromId;
    private String toId;
    private String fromName;
    private String toName;
    private float price;
    private LocalTime hour;
    private Date travelDate;
    private LocalTime departTime;
    private LocalTime arrivalTime;

    public FlightInfor() {
    }

    public FlightInfor(String id, String fromId, String toId,
            String fromName, String toName, float price, LocalTime hour) {
        this.id = id;
        this.fromId = fromId;
        this.toId = toId;
        this.fromName = fromName;
        this.toName = toName;
        this.price = price;
        this.hour = hour;
    }

    public FlightInfor(String id, String fromId, String toId,
            String fromName, String toName, float price, LocalTime hour,
            Date travelDate, LocalTime departTime, LocalTime arrivalTime) {
        this.id = id;
        this.fromId = fromId;
        this.toId = toId;
        this.fromName = fromName;
        this.toName = toName;
        this.price = price;
        this.hour = hour;
        this.travelDate = travelDate;
        this.departTime = departTime;
        this.arrivalTime = arrivalTime;
    }

    public Date getTravelDate() {
        return travelDate;
    }
    
    public String getTravelDateString() {
        return Util.formatDate(travelDate);
    }
    
    public String getTravelDateTimeString() {
        return Util.formatDateTime(travelDate);
    }

    public void setTravelDate(Date travelDate) {
        this.travelDate = travelDate;
    }

    public LocalTime getDepartTime() {
        return departTime;
    }
    
    public String getDepartTimeString() {
        return Util.formatLocalTime(departTime);
    }

    public void setDepartTime(LocalTime departTime) {
        this.departTime = departTime;
    }

    public LocalTime getArrivalTime() {
        return arrivalTime;
    }
    
    public String getArrivalTimeString() {
        return Util.formatLocalTime(arrivalTime);
    }

    public void setArrivalTime(LocalTime arrivalTime) {
        this.arrivalTime = arrivalTime;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFromId() {
        return fromId;
    }

    public void setFromId(String fromId) {
        this.fromId = fromId;
    }

    public String getToId() {
        return toId;
    }

    public void setToId(String toId) {
        this.toId = toId;
    }

    public String getFromName() {
        return fromName;
    }

    public void setFromName(String fromName) {
        this.fromName = fromName;
    }

    public String getToName() {
        return toName;
    }

    public void setToName(String toName) {
        this.toName = toName;
    }

    public float getPrice() {
        return price;
    }
    
    public String getPriceFormat() {
        return String.format("%.2f", price);
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public LocalTime getHour() {
        return hour;
    }
    
    public String getHourString() {
        String minuteFormated = String.format("%02d", hour.getMinute());
        return hour.getHour() + "h" + minuteFormated;
    }

    public void setHour(LocalTime hour) {
        this.hour = hour;
    }

}
