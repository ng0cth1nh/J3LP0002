<%-- 
    Document   : newjsp
    Created on : Feb 17, 2021, 5:32:10 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>    
    <body>
        <c:set var="user" scope="session" value="${sessionScope.user}"/>
        <div class="header-container">
            <div class="top">
                <div class="right">
                    <img class="logo" src="./image/logo.png"/>
                    <span class="slogan">Fast, Frequent & Safe Flight</span>
                </div>
                <div class="left">
                    <c:if test="${user!=Empty}">
                        <div class="login">
                            <img class="img-logo login-logo" src="./image/user.png"/>
                            <p class="text">${user.getFirstName()}</p>
                        </div>
                        <div class="register">
                            <img class="img-logo" src="./image/quit_t.png"/>
                            <a href="/J3LP0002/logout" class="text">Logout</a>
                        </div>
                    </c:if>

                    <c:if test="${user==Empty}">
                        <div class="login">
                            <img class="img-logo login-logo" src="./image/home1.png"/>
                            <a href="/J3LP0002/login" class="text">Login</a>
                        </div>
                        <div class="register">
                            <img class="img-logo" src="./image/register_t.png"/>
                            <a href="/J3LP0002/register" class="text">Register</a>
                        </div>
                    </c:if>

                </div>
            </div>
            <div class="bottom">
                <ul class="header">
                    <li class="header__item">
                        <a href="/J3LP0002/home">Home</a>
                    </li>
                    <li class="header__item ">
                        <a href="/J3LP0002/booking">Book</a>
                    </li>
                    <li class="header__item header__item-active">
                        <a href="/J3LP0002/manage-booking">Manage Booking</a>
                    </li>
                </ul>
            </div>
        </div>
    </body>
</html>
