window.onload = ()=> {
    let popup = document.querySelector('.popup');
    popup.style.display = 'block';
}

// Fermeture du popup quand on clique sur la croix ou sur BonChan :D
let closeBtn = document.querySelector('.close-btn');
closeBtn.addEventListener('click', function () {
    let popup = document.querySelector('.popup');
    popup.style.display = 'none';
});
let BonChan = document.querySelector('.BonChan');
    BonChan.addEventListener('click', function () {
    let popup = document.querySelector('.popup');
    popup.style.display = 'none';
});

let card = document.querySelector('.card');
let flipInner = document.querySelector('.flip-card-inner');
const audio = new Audio('assets/sound/cest-lheure-du-du-duel.mp3');
card.addEventListener("click", function(){
    flipInner.style.transform = "rotateY(180deg)";
    audio.play();
});