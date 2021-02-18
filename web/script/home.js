/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



const returnContainer = document.getElementById("return-contanier");
const oneWayInput = document.getElementById("one-way");
const roundTripInput = document.getElementById("round-trip");
const homeError = document.getElementById("home-error");
const flightFrom = document.getElementById("flight-form");
const from = document.getElementById("from");
const to = document.getElementById("to");

const departureDate = document.getElementById("departure");
const returnDate = document.getElementById("return");



departureDate.min = returnDate.min = new Date().toISOString().split("T")[0];

returnDate.onclick = function () {
    if (departureDate.value) {
        returnDate.min = departureDate.value;
    }
}

departureDate.onclick = function () {
    if (returnDate.value) {
        departureDate.max = returnDate.value;
    }
}





oneWayInput.onclick = function () {
    returnContainer.classList.add("hidden");
    homeError.classList.add("hidden");
}

roundTripInput.onclick = function () {
    returnContainer.classList.remove("hidden");
}


flightFrom.addEventListener("submit", function (e) {

    if (from.value === to.value) {
        homeError.innerHTML = "Departure and destination city must be differ";
        e.preventDefault();
        homeError.classList.remove("hidden");
    } else {
        if (roundTripInput.checked) {
            if (!departureDate.value || !returnDate.value) {
                homeError.innerHTML = "Please choose departure date and return date";
                e.preventDefault();
                homeError.classList.remove("hidden");
            }

        } else {
            if (!departureDate.value) {
                homeError.innerHTML = "Please choose departure date";
                e.preventDefault();
                homeError.classList.remove("hidden");
            }
        }
    }
})

