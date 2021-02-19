<%-- 
    Document   : booking
    Created on : Feb 18, 2021, 10:36:45 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
        <link href="css/base.css" rel="stylesheet" type="text/css"/>
        <link href="css/booking.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%@include file="header.jsp"%>
            <c:set var="fi" scope="session" value="${sessionScope.flightInfor}"></c:set>
                <div class="app">
                    <div class="top-right">
                        <div class="city-wrapper">
                            <span class="city-label">Departure:</span>
                            <span class="city">${fi.getFromName()}</span>
                    </div>
                    <div class="city-wrapper">
                        <span class="city-label">Return:</span>
                        <span class="city">${fi.getToName()}</span>
                    </div>
                </div>
                <h1>1.Select Departing Flight</h1>
                <div class="location">
                    <h3>${fi.getFromName()}</h3>
                    <span class="to">to</span>
                    <h3>${fi.getToName()}</h3>
                </div>
                <div class="flight-container">
                    <span class="flight-date">${fi.getTravelDate()}</span>
                    <div class="flight-infor">
                        <div class="flight-time">
                            <div class="time-wrapper">
                                <span class="flight-label">Departs</span>
                                <span class="time">${fi.getDepartTime()}</span>
                            </div>
                            <div class="time-wrapper">
                                <span class="flight-label">Arrives</span>
                                <span class="time">${fi.getArrivalTime()}</span>
                            </div>
                            <div class="time-wrapper">
                                <span class="flight-label">Flight Detail</span>
                                <span class="time">${fi.getHour()}</span>
                            </div>
                        </div>
                        <div class="flight-price">
                            <span class="circle"></span>
                            <span class="price">${fi.getPrice()}</span>
                        </div>
                    </div>
                    <p class="note">Prices quoted are per adult passenger, in USD. Unless otherwise stated, fares are non refundable, limited changes are permitted charges apply. Please note that this amount excludes fees and taxes.</p>

                </div>
                <form method="post" action="/J3LP0002/booking">
                    <div class="btn-wrapper">
                        <button type="submit" class="btn btn-save">Save</button>   
                    </div> 
                </form>                                  
            </div>
        </div>

    </body>
</html>
