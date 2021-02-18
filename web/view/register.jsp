<%-- 
    Document   : register
    Created on : Feb 18, 2021, 6:15:53 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <div class="app">
                <div class="form-container">
                    <h2 class="form-title">Register</h2>
                    <form id="register-form">
                        <h4 class="label">New Account</h4>
                        <div class="form-item">
                            <label class="form-label" for="email">Email :</label> 
                            <input class="form-input" required type="email" id="email" name="email">
                            <span class="error" id="error-email"></span>
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
                            <input class="form-input" required type="text" id="first-name" name="first-name">
                        </div>
                        <div class="form-item">
                            <label class="form-label" for="last-name">Last Name :</label> 
                            <input class="form-input" required type="text" id="last-name" name="last-name">
                        </div>
                        <div class="form-item">
                            <label class="form-label" for="address">Address :</label> 
                            <input class="form-input" required type="text" id="address" name="address">
                        </div>
                        <div class="form-item">
                            <label class="form-label" for="phone">Phone Number :</label> 
                            <input class="form-input" required type="text" id="phone" name="phone">
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
                            <input class="form-input" required type="text" id="card-number" name="card-number">
                            <span class="error hidden" id="error-card"></span>
                        </div>
                        <button type="submit" class="btn btn-register">
                            Register
                        </button> 
                    </form>
                </div>
            </div>
        </div>
            <script src="script/register.js" type="text/javascript"></script>
    </body>
</html>
