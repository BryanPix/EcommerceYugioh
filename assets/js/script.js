let yugiohDiv = document.querySelector('.yugiCard');

// Popup
window.onload = () => {
  let popup = document.querySelector(".popup");
  popup.style.display = "block";
};
let card = document.querySelector(".card");
// retournement de la carte popup quand on clique dessus :D
let flipInner = document.querySelector(".flip-card-inner");
flipInner.addEventListener("click", function () {
  flipInner.style.transform = "rotateY(180deg)";
  // const audio = new Audio('assets/sound/cest-lheure-du-du-duel.mp3');
});
let backCard = document.querySelector(".flip-card-back");
backCard.addEventListener("click", function () {
  card.style.display = "none";
});

// fetch data from json file
fetch("assets/json/ecommerce.json", {
  method: "GET",
  headers: {
    Accept: "application/json",
  },
})
  .then((response) => response.json())
  .then(data => {
    // for (let i = 0; i < ${ART_ID}.length; i++) {
      
    // }
    console.log(data);
  })
  .catch(error => {
    console.error('Error:', error);
  });