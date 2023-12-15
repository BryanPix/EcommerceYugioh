// Popup
window.onload = () => {
  let popup = document.querySelector(".popup");
  popup.style.display = "block";
};
let cardYug = document.querySelector(".cardYu");
// retournement de la carte popup quand on clique dessus :D
let flipInner = document.querySelector(".flip-card-inner");
flipInner.addEventListener("click", function () {
  flipInner.style.transform = "rotateY(180deg)";
});
let frontCard = document.querySelector(".flip-card-front");
frontCard.addEventListener("click", function () {
  cardYug.style.display = "none";
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
      <div class="elCardBoot" style="width: 18rem;">
      <img class="card-img-top" src="assets/img/${article.ART_PICTURE}" alt="image Booster" >
      <div class="card-body">
      <h5 class="card-title">${article.ART_Name}</h5>
      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
      <a href="#" class="btn">Ajouter au panier</a>
      </div>
      </div>
      `;

      cardsContainer.appendChild(cardEl);
    });
  })
  .catch(error => console.log(error));