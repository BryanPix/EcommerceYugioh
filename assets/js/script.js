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

fetch("assets/json/ecommerce.json")
  .then((response) => response.json())
  .then((data) => {
    const cardsContainer = document.getElementById("cards-container");
    const cartContainer = document.querySelector(".cartContainer");

    const relevantData = data.find((item) => item.type === "table")?.data || [];

    relevantData.forEach((article) => {
      const cardEl = document.createElement("div");
      cardEl.classList.add("card");

      cardEl.innerHTML = `
          <div class="elCard row">
            <img class="card-img-top" src="assets/img/Articles/${article.ART_PICTURE}" alt="image Booster" >
            <div class="card-body">
              <h5 class="card-title">${article.ART_Name}</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <button class="btnCart" id="addToCart">Ajouter au panier</button>
            </div>
          </div>
        `;

      // Panier (ENFIINNNNNNNN) !!!
      const addToCartBtn = cardEl.querySelector(".btnCart");
      const cartItem = document.querySelector("#cartItem");
      let cartCount = parseInt(document.querySelector("#count").textContent);
      const cartItems = [];
      
      addToCartBtn.addEventListener("click", () => {
        const selectedArticle = Object.assign({}, article);
      
        const existingItemIndex = cartItems.findIndex(
          (item) => item.id === selectedArticle.id
        );
        if (existingItemIndex !== -1) {
          cartItems[existingItemIndex].quantity++;
        } else {
          selectedArticle.quantity = 1;
          cartItems.push(selectedArticle);
        }
    
        cartCount++;
        cartItems.forEach((article) => {
          cartItem.innerHTML += `
            <div class="uniqueItem">
              <img src="assets/img/Articles/${article.ART_PICTURE}" style="width: 20%" alt="image Booster">
              <span>${article.ART_Name}</span>
              <span>${article.ART_Price} €</span>
              <input type="number" id="inputQuantitySelector" class="form-control" aria-live="polite" data-bs-step="counter" name="quantity" title="quantity" value="0" min="0" max="99" step="1" data-bs-round="0" aria-label="Quantity selector" style="display:inline">
              <button class="btnCartRemove" id="RemoveFromCart"><i class="bi bi-trash"></i></button>      
              <hr>       
            </div>
          `;
        });
        document.addEventListener("click", (event) => {
          const button = event.target.closest("#RemoveFromCart");
          if (button) {
            const currentItem = button.closest(".uniqueItem");
            const itemName = currentItem.querySelector("span").textContent;
        
            const itemIndex = cartItems.findIndex((item) => item.ART_Name === itemName);
            cartItems.splice(itemIndex, 1);
        
            if (cartCount > 0) {
              cartCount--;
            }
            currentItem.remove();
            document.getElementById("count").textContent = cartCount;
          }
        });
        function displayTotalCount() {
          document.getElementById("count").textContent = cartCount;
          cartCount.textContent = cartItems.length;

        }
        displayTotalCount();
      });

      cardsContainer.appendChild(cardEl);
    });

    // Attach click event listener to "panier" element
    const panier = document.querySelector(".panier");
    panier.addEventListener("click", function () {
      cartContainer.style.display =
        cartContainer.style.display === "none" ? "block" : "none";
    });
  })
  .catch((error) => console.log(error));

//pagination

