// INPUTS DEL FORM

const loginUsername = document.getElementById("usernameLog");
const loginPassword = document.getElementById("passwordLog");

// OBJETO DONDE GUARDO LOS DATOS DE LOS INPUTS
let datosLogin = { username: "", password: "" };

// FUNCION DE ENVIO DE FORMULARIO PARA EL LOGIN
function onSubmitLogin(event) {
  event.preventDefault();
  if (datosLogin.username == "" || datosLogin.password == "") {
    alert("Por favor complete todos los datos");
    return;
  }

  // CAPTURA LA LISTA DE USUARIOS DEL localStorage.

  let usuarios = JSON.parse(localStorage.getItem("users"));

  // FILTRO DE USUARIOS , si existe , logea

  let filtro = usuarios.filter((user) => {
    return (
      user.username == datosLogin.username && 
      user.password == datosLogin.password
    );
  });

  if (filtro.length == 0) {
    alert("Usuario o contraseña incorrectos");
    return;
  }

  // Cambia el estado de sesion en el storage a true para que tome el inicio de sesion activo
  localStorage.setItem("sesion", true);

  alert(`Bienvenido ${datosLogin.username}`);

  // Formatea el formulario para que quede limpio
  document.getElementById("formLogin").reset();

  //Redirige al catalogo
  window.location.href = "../pages/catalogo.html";
}

// MANEJO DE ONCHAGE PARA QUE SE EJECUTE AL CAMBIAR LOS INPUTS

// LOGIN

loginUsername.addEventListener("input", (event) => {
  datosLogin.username = event.target.value;
});

loginPassword.addEventListener("input", (event) => {
  datosLogin.password = event.target.value;
});
