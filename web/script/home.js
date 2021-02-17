/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



const returnContainer = document.getElementById("return-contanier");
const oneWayInput = document.getElementById("one-way");
const roundTripInput = document.getElementById("round-trip");

oneWayInput.onclick = function(){
    returnContainer.style.display = "none";
}

roundTripInput.onclick = function(){
    returnContainer.style.display = "flex";
}


