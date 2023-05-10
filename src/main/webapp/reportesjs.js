var btnAbrirModal = document.getElementsByClassName("asignar");
var btnAbrirModal2 = document.getElementsByClassName("opciones");
var btnCerrarModal = document.getElementsByClassName("cerrar");
var btnCerrarModal2 = document.getElementsByClassName("cerrar2");
var modal = document.getElementsByClassName("modal");
var modal2 = document.getElementsByClassName("modal2");

var index;
for (var i = 0; i < btnAbrirModal.length; i++) {
    btnAbrirModal[i].addEventListener("click", function () {
        index = Array.prototype.indexOf.call(btnAbrirModal, this);
        console.log(index);
        modal[index].showModal();
    });
}
var index2;
for (var i = 0; i < btnAbrirModal2.length; i++) {
    btnAbrirModal2[i].addEventListener("click", function () {
        index2 = Array.prototype.indexOf.call(btnAbrirModal2, this);
        console.log(index2);
        modal2[index2].showModal();
    });
}
for (var i = 0; i < btnCerrarModal.length; i++) {
    btnCerrarModal[i].addEventListener("click", function () {
        var index3 = Array.prototype.indexOf.call(btnCerrarModal, this);
        console.log(index3);
        modal[index3].close();
    });
}
for (var i = 0; i < btnCerrarModal2.length; i++) {
    btnCerrarModal2[i].addEventListener("click", function () {
        var index4 = Array.prototype.indexOf.call(btnCerrarModal2, this);
        modal2[index4].close();
    });
}

var formulario = document.getElementsByClassName("formGerente");
for (var i = 0; i < formulario.length; i++) {
    formulario[i].addEventListener("submit", function (event) {
        event.preventDefault();
        index2 = Array.prototype.indexOf.call(formulario, this);
        var estatus = document.getElementsByClassName("checkEsta")[index].value;
        var asignado = document.getElementsByClassName("trabajador")[index].value;

        if (estatus === "En Mantenimiento") {
            if (asignado === "gerenMan1" || asignado === "gerenMan2" || asignado === "gerenMan3") {
                alert("Gerente de mantenimiento encontrado");
                formulario[index2].submit();
            } else {
                alert("Gerente de mantenimiento no encontrado");
            }
        } else if (estatus === "En Proceso") {
            if (asignado === "ingeSop1" || asignado === "ingeSop2" || asignado === "ingeSop3") {
                alert("Ingeniero de soporte encontrado");
                formulario[index2].submit();
            } else {
                alert("Ingeniero de soporte no encontrado");
            }
        }
    });
}
var formularioA = document.getElementsByClassName("formGerenteA");
for (var i = 0; i < formularioA.length; i++) {
    formularioA[i].addEventListener("submit", function (event) {
        event.preventDefault();
        index2 = Array.prototype.indexOf.call(formularioA, this);
        var estatus = document.getElementsByClassName("checkEsta")[index].value;
        console.log("index: " + index);
        console.log(estatus);
        var asignado = document.getElementsByClassName("trabajador")[index].value;
        console.log(asignado);

        if (estatus === "En Programacion") {
            if (asignado === "ingMan1" || asignado === "ingMan2" || asignado === "ingMan3") {
                alert("Ingeniero de mantenimiento encontrado");
                console.log(formularioA[index2]);
                formularioA[index2].submit();
            } else {
                alert("Ingeniero de mantenimiento no encontrado");
                
            }
        }
    });
}
var formulario2A = document.getElementsByClassName("formGerente2A");
for (var i = 0; i < formulario2A.length; i++) {
    formulario2A[i].addEventListener("submit", function (event) {
        event.preventDefault();
        index = Array.prototype.indexOf.call(formulario2A, this);
        var estatus = document.getElementsByClassName("checkEsta2")[index2].value;
        console.log("index: " + index2);
        console.log(estatus);
        var asignado = document.getElementsByClassName("trabajador")[index2].value;
        console.log(asignado);

        if (estatus === "En Programacion") {
                alert("Estatus cambiado");
                console.log(formulario2A[index]);
                formulario2A[index].submit();
        } else if(estatus === "En Proceso")
                alert("Estatus cambiado");
                console.log(formulario2A[index]);
                formulario2A[index].submit();
        });
}

var formulario2 = document.getElementsByClassName("formGerente2");
for (var i = 0; i < formulario2.length; i++) {
    formulario2[i].addEventListener("submit", function (event) {
        event.preventDefault();
        index = Array.prototype.indexOf.call(formulario2, this);
        var estatus = document.getElementsByClassName("checkEsta2")[index2].value;
        console.log(estatus);

        if (estatus === "En Mantenimiento") {
            alert("Estatus cambiado a 'En Mantenimiento'");
            formulario2[index].submit();
        } else if (estatus === "En Proceso") {
            alert("Estatus cambiado a 'En Proceso'");
            formulario2[index].submit();
        }
    });
}