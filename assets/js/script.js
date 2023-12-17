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
// Fermeture du Popup en cas de click sur la face visible de la carte
let frontCard = document.querySelector(".flip-card-front");
frontCard.addEventListener("click", function () {
  cardYug.style.display = "none";
});

// fetch JSON pour recup les infos sur les articles vendus

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
      <div class="elCard row " >
      <img class="card-img-top" src="assets/img/Articles/${article.ART_PICTURE}" alt="image Booster" >
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


// Fetch the JSON data from an external file 
fetch('assets/json/ecommerce.json') 
.then(response => response.json()) 
.then(data => {  
    const relevantData = data.find(item => item.type === 'table')?.data || [];
 // Function to show elements based on TYP_ID
function showElements(typId) {
  let cardsContainer = document.getElementById("cards-container");
  cardsContainer.innerHTML = ""; // Clear previous output

  // Filter the data based on TYP_ID
  let filteredData = relevantData.data.filter(function(article_type) {
    return article_type.TYP_ID === typId;
  });
  
  // Show the filtered elements
  filteredData.forEach(function(article_type) {
    var p = document.createElement("p");
    p.textContent = article_type.TYP_Name;
    output.appendChild(p);
  });
}
// Button click event listeners
document.getElementById("btn_Booster").addEventListener("click", function() {
  showElements("1");
});

document.getElementById("btn_Decks").addEventListener("click", function() {
  showElements("2");
});

document.getElementById("btn_Accessoires").addEventListener("click", function() {
  showElements("3");
});

}) 
.catch(error => console.log(error));