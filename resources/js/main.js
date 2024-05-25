

// INPUTS DEL FORM

const loginUsername = document.getElementById("usernameLog");
const loginPassword = document.getElementById("passwordLog");

// USUARIO FALSO

let usuarioFalso = [
  {
    username: "admin",
    password: "1234",
  },
];

// OBJETO DONDE GUARDO LOS DATOS DE LOS INPUTS
let datosLogin = { username: "", password: "" };

// FUNCION DE ENVIO DE FORMULARIO PARA EL LOGIN
function onSubmitLogin(event) {
  event.preventDefault();
  if (datosLogin.username == "" || datosLogin.password == "") {
    alert("Por favor complete todos los datos");
    return;
  }
  let filtro = usuarioFalso.filter(
    (user) =>
      user.username == datosLogin.username &&
      user.password == datosLogin.password
  );

  if (filtro.length == 0) {
    alert("Usuario o contraseña incorrectos");
    return;
  }

  alert(`Bienvenido ${datosLogin.username}`);
  document.getElementById("formLogin").reset();
}


// MANEJO DE ONCHAGE PARA QUE SE EJECUTE AL CAMBIAR LOS INPUTS

// LOGIN

loginUsername.addEventListener("input", (event) => {
  datosLogin.username = event.target.value;
});

loginPassword.addEventListener("input", (event) => {
  datosLogin.password = event.target.value;
});
