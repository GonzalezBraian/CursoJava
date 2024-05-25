
// INPUT DEL REGISTER
const registerUsername = document.getElementById("usernameReg");
const registerPassword = document.getElementById("passwordReg");
const registerPasswordD = document.getElementById("passwordDReg");


// USUARIO FALSO
let usuarioFalso = [
  {
    username: "admin",
    password: "1234",
  },
];


// OBJETO DONDE GUARDO LOS DATOS DE LOS INPUTS
let datosRegister = { username: "", password: "", passwordD: "" };


// FUNCION DE ENVIO DE FORMULARIO PARA EL REGISTRO

function onSubmiteRegister(event) {
  event.preventDefault();
  if (
    datosRegister.username == "" ||
    datosRegister.password == "" ||
    datosRegister.passwordD == ""
  ) {
    alert("Por favor complete todos los datos");
    return;
  }
  if (datosRegister.password != datosRegister.passwordD) {
    alert("Las contraseñas no coinciden");
    return;
  }
  usuarioFalso.push({
    username: datosRegister.username,
    password: datosRegister.password,
  });
  console.log(usuarioFalso);
  alert("Registrado con exito");
  document.getElementById("formRegister").reset();
}



// MANEJO DE ONCHAGE PARA QUE SE EJECUTE AL CAMBIAR LOS INPUTS

// REGISTRO
registerUsername.addEventListener("input", (event) => {
  datosRegister.username = event.target.value;
});

registerPassword.addEventListener("input", (event) => {
  datosRegister.password = event.target.value;
});

registerPasswordD.addEventListener("input", (event) => {
  datosRegister.passwordD = event.target.value;
});
