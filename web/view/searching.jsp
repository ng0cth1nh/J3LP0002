<%-- 
    Document   : searching
    Created on : Feb 19, 2021, 12:19:35 AM
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
             <c:set var="error" scope="request" value="${requestScope.error}"/>
            <div class="form-container">
                <h2 class="form-title">Search Bookings</h2>
                <form id="search-form" method="post" action="/J3LP0002/manage-booking">
                    <div class="code">
                        <div class="code-item">
                            <input checked type="radio" id="reservation" name="type" value="reservation">
                            <label for="reservation">Reservation code</label>
                        </div>
                        <div class="code-item">
                            <input type="radio" id="all" name="type" value="all">
                            <label for="all">All bookings</label>
                        </div>
                    </div>
                    <div class="form-item">
                        <label class="form-label" for="reser-code">Enter reservation code</label> 
                        <input class="form-input" type="text" id="reser-code" value="${param.reserCode}" name="reserCode">
                        <c:if test="${error!=Empty}">
                            <span class="error">${error}</span>
                        </c:if>          
                    </div>
                    <button type="submit" class="btn btn-search">Search</button>
                </form>
            </div>

        </div>

    </body>
</html>
