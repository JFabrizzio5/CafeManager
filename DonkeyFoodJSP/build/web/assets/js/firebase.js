import { initializeApp } from "https://www.gstatic.com/firebasejs/9.17.1/firebase-app.js";
import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.17.1/firebase-analytics.js";

const firebaseConfig = {
    apiKey: "AIzaSyBijtFASw5FvK1MOlnft-OoF0aW0Xg7AyY",
    authDomain: "donkey-food.firebaseapp.com",
    projectId: "donkey-food",
    storageBucket: "donkey-food.appspot.com",
    messagingSenderId: "348813570628",
    appId: "1:348813570628:web:9edcf414c3c7bd41688211",
    measurementId: "G-HTG5HVL6B5"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);

let db = firebase.firestore();

const SaveUser = (usuarios) => {

    db.collection("users").add({
            user
        })
        .then((docRef) => {
            MJSOK();
        })
        .catch((error) => {
            MSJERROR();
        });

}

const MJSOK = () => {
    Swal.fire(
        'Buen trabajo',
        'Datos guardados correctamente',
        'success'
    )
}

const MSJERROR = () => {
    Swal.fire(
        'ops!',
        'Los datos no fueron guardados',
        'error'
    )
}

$("#btnsave").on('click', () => {
    let cedula = $("#cedula").val();
    let nombre = $("#nombre").val();
    let apellido = $("#apellido").val();
    let ciudad = $("#ciudad").val();

    const user = {
        cedula,
        nombre,
        apellido,
        ciudad
    }

    SaveUser(user)
})