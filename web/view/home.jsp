<%-- 
    Document   : index
    Created on : Feb 17, 2021, 5:24:15 PM
    Author     : Vu Ngoc Thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="css/base.css" rel="stylesheet" type="text/css"/>
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%@include file="header.jsp"%>
            <div class="app">
                <div class="form-container">
                    <div class="form-top header__item-active">
                        <span>Flight</span>
                    </div>
                    <form class="form flight-form">
                        <div class="type">
                            <div class="type__item">
                                <div class="type__item-wrapper">
                                    <input type="radio" id="round-trip" name="type" value="round-trip">
                                    <label for="round-trip">Round trip</label>
                                </div>
                            </div>
                            <div class="type__item">
                                <div class="type__item-wrapper">
                                    <input type="radio" id="one-way" name="type" value="one-way">
                                    <label for="one-way">One way</label>
                                </div>

                            </div>
                        </div>
                        <div class="form-item">
                            <label class="form-label" for="userName">From</label> 
                            <select class="option" name="from" id="from">
                                <option>Ha Noi</option>
                                <option>Da Nang</option>
                                <option>HCM</option>
                            </select>
                   
                        </div>
                        
                        <div class="form-item">
                            <label class="form-label" for="userName">To</label> 
                            <select class="option" name="to" id="to">
                                <option>Ha Noi</option>
                                <option>Da Nang</option>
                                <option>HCM</option>
                            </select>
               
                        </div>
                        
                        <div class="form-item">
                            <label class="form-label" for="userName">Departure</label> 
                            <input type="date" id="departure" name="birthday">
               
                        </div>
                        <div class="form-item" id="return-contanier">
                            <label class="form-label" for="userName">Return</label> 
                            <input type="date" id="return" name="birthday">
  
                        </div>
                    </form>
                </div>


            </div>
        </div>
            <script src="script/home.js" type="text/javascript"></script>
    </body>
</html>
