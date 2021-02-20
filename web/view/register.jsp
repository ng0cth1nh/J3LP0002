<%-- 
    Document   : register
    Created on : Feb 18, 2021, 6:15:53 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>

        <link href="css/base.css" rel="stylesheet" type="text/css"/>
        <link href="css/register.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%@include file="header.jsp"%>
            <c:set var="mess" scope="request" value="${requestScope.mess}"/>
            <c:set var="error" scope="request" value="${requestScope.error}"/>
            <div class="app">
                <div class="form-container">
                    <c:if test="${mess!=Empty}">
                        <div class="mess-container">
                            <span id="mess">${mess}</span> 
                            <a id="login-a" href="/J3LP0002/login" class="btn">
                                Login
                            </a>  
                        </div>
                       
                    </c:if>
                    <c:if test="${mess==Empty}">
                        <h2 class="form-title">Register</h2>
                        <form id="register-form" action="/J3LP0002/register" method="post">
                            <h4 class="label">New Account</h4>
                            <div class="form-item">
                                <label class="form-label" for="email">Email :</label> 
                                <input class="form-input" required type="email" id="email" value="${param.email}" name="email">
                                <c:if test="${error!=Empty}">
                                    <span class="error" id="error-email">${error}</span> 
                                </c:if>

                            </div>
                            <div class="form-item">
                                <label class="form-label" for="password">Password :</label> 
                                <input class="form-input" required type="password" id="password" name="password">
                            </div>
                            <div class="form-item">
                                <label class="form-label" for="re-password">Verify Password :</label> 
                                <input class="form-input" required type="password"  id="re-password" name="re-password">
                                <span class="error hidden" id="error-pass"></span>
                            </div>
                            <h4 class="label">Contact Information</h4>
                            <div class="form-item">
                                <label class="form-label" for="first-name">First Name :</label> 
                                <input class="form-input" required type="text" id="first-name" value="${param.firstName}" name="firstName">
                            </div>
                            <div class="form-item">
                                <label class="form-label" for="last-name">Last Name :</label> 
                                <input class="form-input" required type="text" id="last-name" value="${param.lastName}" name="lastName">
                            </div>
                            <div class="form-item">
                                <label class="form-label" for="address">Address :</label> 
                                <input class="form-input" required type="text" id="address" value="${param.address}" name="address">
                            </div>
                            <div class="form-item">
                                <label class="form-label" for="phone">Phone Number :</label> 
                                <input class="form-input" required type="text" id="phone" value="${param.phone}" name="phone">
                                <span class="error hidden" id="error-phone"></span>
                            </div>
                            <div class="form-item">
                                <label class="form-label" for="sex">Sex :</label> 
                                <select class="option" name="sex" id="sex">
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                            </div>
                            <div class="form-item">
                                <label class="form-label" for="age">Age :</label> 
                                <input class="form-input" min="1" required type="number" id="age" name="age">
                            </div>
                            <div class="form-item">
                                <label class="form-label" for="card-number">Card Number :</label> 
                                <input class="form-input" required type="text" value="${param.cardNumber}" id="card-number" name="cardNumber">
                                <span class="error hidden" id="error-card"></span>
                            </div>
                            <button type="submit" class="btn btn-register">
                                Register
                            </button> 
                        </form>
                    </c:if>          
                </div>
            </div>
        </div>
        <script src="script/register.js" type="text/javascript"></script>
    </body>
</html>
