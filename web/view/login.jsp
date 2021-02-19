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
        <title>Login</title>

        <link href="css/base.css" rel="stylesheet" type="text/css"/>
        <link href="css/register.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%@include file="header.jsp"%>
             <c:set var="error" scope="request" value="${requestScope.error}"/>
            <div class="app">
                <div class="form-container">
                    <h1 class="form-title label login-label">Login</h1>
                    <form id="login-form" method="post" action="/J3LP0002/login">
                        <div class="form-item">
                            <label class="form-label" for="email">Email :</label> 
                            <input class="form-input" required type="email" id="email" value="${param.email}" name="email">
                            <c:if test="${error!=Empty}">
                                <span class="error" id="error-email">${error}</span>
                            </c:if>                      
                        </div>
                        <div class="form-item">
                            <label class="form-label" for="password">Password :</label> 
                            <input class="form-input" required type="password" id="password" value="${param.password}" name="password">
                        </div>
                        <button type="submit" class="btn btn-login">
                            Login
                        </button> 
                      <a class="btn-register btn btn-link" href="/J3LP0002/register">Register</a>
                   </form>
                </div>
            </div>
        </div>
        <script src="script/register.js" type="text/javascript"></script>
    </body>
</html>
