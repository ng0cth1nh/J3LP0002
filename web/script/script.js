/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




var path = window.location.pathname;
console.log(path);
if (path.includes("manage-booking")) {
    document.getElementById("manage").classList.add("header__item-active");
} else if (path.includes("booking")) {
    document.getElementById("booking").classList.add("header__item-active");
} else if(!path.includes("login") && !path.includes("register")) {
    document.getElementById("home").classList.add("header__item-active");
}

