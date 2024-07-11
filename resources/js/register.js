// DEJA DE SER ÚTIL CARGAR VACÍO EL ARRAY USERS EN LOCAL STORAGE PORQUE LO VAMOS A CARGAR DESDE EL ENDPOINT EN LA DB.
// AGREGA ARRAY DE USUARIOS AL localStorage
/*
document.addEventListener("DOMContentLoaded", () => {
  if (localStorage.getItem("users") == null) {
    localStorage.setItem("users", JSON.stringify([]));
  }
});
*/

// INPUT DEL REGISTER
const registerUsername = document.getElementById("usernameReg");
const registerPassword = document.getElementById("passwordReg");
const registerPasswordD = document.getElementById("passwordDReg");

// OBJETO DONDE GUARDO LOS DATOS DE LOS INPUTS
let datosRegister = { username: "", password: "", passwordD: "" };

// FUNCION DE ENVIO DE FORMULARIO PARA EL REGISTRO

async function onSubmiteRegister(event) {
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

  // DEJA DE SER NECESARIO PORQUE AHORA SE PERSISTE DIRECTAMENTE EN LA DB APUNTANDO AL ENDPOINT.
  /*
  let usuarios = JSON.parse(localStorage.getItem("users"));
  usuarios.push({
    username: datosRegister.username,
    password: datosRegister.password,
  });
  localStorage.setItem("users", JSON.stringify(usuarios));
  */

	const url = "http://localhost:8088/users"

  const usermail = datosRegister.username + "@gmail.com"; 

	const userData = {
					   username: datosRegister.username,
					   password: datosRegister.password,
					   email: usermail
					}

  console.log(userData);

	const response = await fetch(url, {
										 method: "post",
										 header: {"Content Type": "application/json"},
										 body: JSON.stringify(userData)
									})

	if(response.ok){
		console.log("USUARIO CREADO...");
    alert("Registrado con exito");
	} else {
		console.error("Error al crear el usuario...");
    alert("Se produjo un error al crear el usuario, vuelva a intentarlo con otros valores.");
	} 
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
