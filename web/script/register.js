/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


const registerForm = document.getElementById("register-form");
const pass = document.getElementById("password");
const rePass = document.getElementById("re-password");
const errorPass = document.getElementById("error-pass");
const errorPhone = document.getElementById("error-phone");
const phone = document.getElementById("phone");
const errorCard = document.getElementById("error-card");
const card = document.getElementById("card-number");




registerForm.addEventListener("submit", function (e) {
    console.log(pass.value);
    if (pass.value !== rePass.value) {
        e.preventDefault();
        errorPass.innerHTML = "The password does not match";
        errorPass.classList.remove("hidden");
    } else {
        errorPass.classList.add("hidden");
    }
    if (!checkOnlyDigit(phone.value)) {
        e.preventDefault();
        errorPhone.innerHTML = "Phone does not include letter";
        errorPhone.classList.remove("hidden");
    } else {
        errorPhone.classList.add("hidden");
    }
    if (!checkOnlyDigit(card.value)) {
        e.preventDefault();
        errorCard.innerHTML = "Card does not include letter";
        errorCard.classList.remove("hidden");
    } else {
        errorCard.classList.add("hidden");
    }

})


function checkOnlyDigit(str) {
    let regex = /^[0-9]+$/;
    return regex.test(str);
}