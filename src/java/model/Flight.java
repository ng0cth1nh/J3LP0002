/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;


/**
 *
 * @author Vu Ngoc Thinh
 */
public class Flight {

    private String id;
    private String code;
    private Date issueDate;
    private FlightInfor flightInfor;
    private boolean isOneway;

    public Flight() {
    }

    public Flight(String id, String code, Date issueDate,
            boolean isOneway, FlightInfor flightInfor) {
        this.id = id;
        this.code = code;
        this.issueDate = issueDate;
        this.flightInfor = flightInfor;
        this.isOneway = isOneway;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Date getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(Date issueDate) {
        this.issueDate = issueDate;
    }

    public boolean isIsOneway() {
        return isOneway;
    }

    public void setIsOneway(boolean isOneway) {
        this.isOneway = isOneway;
    }

    public FlightInfor getFlightInfor() {
        return flightInfor;
    }

    public void setFlightInfor(FlightInfor flightInfor) {
        this.flightInfor = flightInfor;
    }

}
