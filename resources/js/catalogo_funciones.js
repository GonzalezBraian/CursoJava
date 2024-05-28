// Si el sesionStorage es falso, redirecciona al login

document.addEventListener("DOMContentLoaded", () => {
  if (JSON.parse(localStorage.getItem("sesion")) == false) {
    window.location.href = "../pages/login.html";
  }
});

function insertarCard(juego, i, juegos) {
    const card = crearCard(juego);
    controlDescargas(card);
    renderizarCard(card);
  }
  
  function crearCard(juego) {
    const divCard =document.createElement('div');
    const img = document.createElement('img');
  
    //img.classList.add('catalogo');
    divCard.classList.add('card');
  
    // desestructuración de array
    // const {nombre, precio, descargas, urlImg}  =   juego;
    const nombre = juego.nombre;
    const precio = juego.precio;
    const descargas = juego.descargas;
    const urlDownload = juego.urlDownload;
    const urlImg = juego.urlImg;
       
    divCard.innerHTML = `
       <a href="${juego.urlDownload}"><img src="${juego.urlImg}" alt="Imagen del juego ${nombre}"></a> 
       <h2>${nombre}</h2>
       <p>Precio USD: ${precio}</p>
       <p>Descargas: ${descargas}</p>`;
  
    return divCard;
  }
  
  function controlDescargas(card) {
    console.log();
    if(obtenerDescargas(card) < 50){
      card.classList.add('bajo-descargas')
    }
  }
  
  function obtenerDescargas(card){
    let parrafos = card.querySelectorAll('p');
    let parrafoDescargas = parrafos[1];
    let contenidoParrafo = parrafoDescargas.textContent
  
    let descargasValor = contenidoParrafo.split(':')[1];
  
    return parseInt(descargasValor);
  }
  
  function renderizarCard(card){
    const container = document.querySelector('#catalogo-container');
    container.appendChild(card);
  }