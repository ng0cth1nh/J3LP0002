<%-- 
    Document   : manage-booking
    Created on : Feb 19, 2021, 12:42:24 AM
    Author     : Vu Ngoc Thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <c:set var="flight" scope="request" value="${requestScope.flight}"></c:set>
            <c:set var="user" scope="session" value="${sessionScope.user}"></c:set>
            <c:set var="flights" scope="request" value="${requestScope.flights}"></c:set>
                <div class="app">
                <c:if test="${flight!=Empty}">
                    <div class="receipt-wrapper">
                        <div class="label-wrapper">
                            <h2 class="label">eTicket Receipt</h2>
                        </div>
                        <div class="item">Prepare For</div>
                        <div class="item">${user.getFirstName()}, ${user.getLastName()}</div>
                        <div class="item">RESERVATION CODE: 
                            <span id="code">${flight.getCode()}</span>
                        </div>
                        <div class="item">TICKET ISSUE DATE: <span>${flight.getIssueDateTimeString()}</span></div>
                    </div>
                    <div class="detail-container">
                        <div class="label-wrapper">
                            <h2 class="label itinerary-label">Itinerary Details</h2>
                        </div>
                        <div class="detail">
                            <div class="detail-wrapper">
                                <span class="detail-label">TRAVEL DATE</span>
                                <span class="time">${flight.getFlightInfor().getTravelDateTimeString()}</span>
                            </div>
                            <div class="detail-wrapper">
                                <span class="detail-label">DEPARTURE</span>
                                <span class="city">${flight.getFlightInfor().getFromName()}</span>
                                <span class="time">Time:${flight.getFlightInfor().getDepartTimeString()}</span>
                            </div>
                            <div class="detail-wrapper">
                                <span class="detail-label">ARRIVAL</span>
                                <span class="city">${flight.getFlightInfor().getToName()}</span>
                                <span class="time">Time:${flight.getFlightInfor().getArrivalTimeString()}</span>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${flights!=Empty}">
                    <c:forEach var="f" items="${flights}">
                        <div class="receipt-wrapper">
                            <div class="label-wrapper">
                                <h2 class="label">eTicket Receipt</h2>
                            </div>
                            <div class="item">Prepare For</div>
                            <div class="item">${user.getFirstName()}, ${user.getLastName()}</div>
                            <div class="item">RESERVATION CODE: 
                                <span id="code">${f.getCode()}</span>
                            </div>
                            <div class="item">TICKET ISSUE DATE: <span>${f.getIssueDateTimeString()}</span></div>
                        </div>
                        <div class="detail-container">
                            <div class="label-wrapper">
                                <h2 class="label itinerary-label">Itinerary Details</h2>
                            </div>
                            <div class="detail">
                                <div class="detail-wrapper">
                                    <span class="detail-label">TRAVEL DATE</span>
                                    <span class="time">${f.getFlightInfor().getTravelDateTimeString()}</span>
                                </div>
                                <div class="detail-wrapper">
                                    <span class="detail-label">DEPARTURE</span>
                                    <span class="city">${f.getFlightInfor().getFromName()}</span>
                                    <span class="time">Time:${f.getFlightInfor().getDepartTimeString()}</span>
                                </div>
                                <div class="detail-wrapper">
                                    <span class="detail-label">ARRIVAL</span>
                                    <span class="city">${f.getFlightInfor().getToName()}</span>
                                    <span class="time">Time:${f.getFlightInfor().getArrivalTimeString()}</span>
                                </div>
                            </div>
                        </div>
                    </c:forEach>        
                </c:if>
            </div>
        </div>

    </body>
</html>
