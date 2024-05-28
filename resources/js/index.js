document.addEventListener("DOMContentLoaded", () => {
  if(localStorage.getItem('sesion') == null){
    localStorage.setItem('sesion', false);
  }
  if(localStorage.getItem('users') == null){
    localStorage.setItem('users', JSON.stringify([]));
  }
})

// INPUTS DEL FORM
const menuIcon = document.getElementById('menu');
const navMenu = document.getElementById('nav');



menuIcon.addEventListener('click', function() {
  navMenu.classList.toggle('menuMobileActive');
  document.body.classList.toggle('no-scroll');
});
