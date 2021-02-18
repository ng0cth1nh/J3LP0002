<%-- 
    Document   : searching
    Created on : Feb 19, 2021, 12:19:35 AM
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
            <div class="form-container">
                <h2 class="form-title">Search Bookings</h2>
                <form id="search-form">
                    <div class="code">
                        <div class="code-item">
                            <input checked type="radio" id="reservation" name="code" value="reservation">
                            <label for="reservation">Reservation code</label>
                        </div>
                        <div class="code-item">
                            <input type="radio" id="all" name="code" value="all">
                            <label for="all">All bookings</label>
                        </div>
                    </div>
                    <div class="form-item">
                        <label class="form-label" for="reser-code">Enter reservation code</label> 
                        <input class="form-input" required type="text" id="reser-code" name="reser-code">
                    </div>
                    <button type="submit" class="btn btn-search">Search</button>
                </form>
            </div>

        </div>

    </body>
</html>
