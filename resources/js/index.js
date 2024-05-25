

// INPUTS DEL FORM
const menuIcon = document.getElementById('menu');
const navMenu = document.getElementById('nav');



menuIcon.addEventListener('click', function() {
  navMenu.classList.toggle('menuMobileActive');
  document.body.classList.toggle('no-scroll');
});
