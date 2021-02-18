<%-- 
    Document   : manage-booking
    Created on : Feb 19, 2021, 12:42:24 AM
    Author     : Vu Ngoc Thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Booking</title>
        <link href="css/base.css" rel="stylesheet" type="text/css"/>
        <link href="css/manage.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%@include file="header.jsp"%>
            <div class="app">
                <div class="receipt-wrapper">
                    <div class="label-wrapper">
                        <h2 class="label">eTicket Receipt</h2>
                    </div>
                    <div class="item">Prepare For</div>
                    <div class="item">Vu Ngoc Thinh</div>
                    <div class="item">RESERVATION CODE: 
                        <span id="code">33F35F2</span>
                    </div>
                    <div class="item">TICKET ISSUE DATE: <span>09/08/2021 00:00:00</span></div>
                </div>
                <div class="detail-container">
                    <div class="label-wrapper">
                        <h2 class="label itinerary-label">Itinerary Details</h2>
                    </div>
                    <div class="detail">
                        <div class="detail-wrapper">
                            <span class="detail-label">TRAVEL DATE</span>
                            <span class="time">09/05/2002 00:00:00</span>
                        </div>
                        <div class="detail-wrapper">
                            <span class="detail-label">DEPARTURE</span>
                            <span class="city">Ha Noi</span>
                            <span class="time">Time:05:30PM</span>
                        </div>
                        <div class="detail-wrapper">
                            <span class="detail-label">ARRIVAL</span>
                            <span class="city">Da Nang</span>
                            <span class="time">Time:06:30PM</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
