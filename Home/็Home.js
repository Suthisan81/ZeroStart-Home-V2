const hamburger = document.querySelector('.hamburger-menu');
const menu = document.querySelector('.menu-items');

hamburger.addEventListener('click', () => {
    menu.classList.toggle('active');
}

);
