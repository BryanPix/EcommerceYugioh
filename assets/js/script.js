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
});
let frontCard = document.querySelector(".flip-card-front");
frontCard.addEventListener("click", function () {
  card.style.display = "none";
});

fetch('assets/json/ecommerce.json')
  .then(response => response.json())
  .then(data => {
    const cardsContainer = document.getElementById('cards-container');
    // Récupération des données pertinentes qui se trouvent dans le tableau 'data' du deuxième objet
    const relevantData = data.find(item => item.type === 'table')?.data || [];

    relevantData.forEach(article => {
      const cardEl = document.createElement('div');
      cardEl.classList.add('card');

      // Remplissage de la carte avec les données de l'élément
      cardEl.innerHTML = `
        <h2>${article.ART_Name}</h2>
        <img src="assets/img/${article.ART_PICTURE}" alt="">
        <p>Prix : ${article.ART_Price}</p>
        <p>Description : ${article.ART_DESC}</p>
      `;

      cardsContainer.appendChild(cardEl);
    });
  })
  .catch(error => console.log(error));