const movPag = document.querySelector(".movPag");
const btn_adelante2 = document.querySelector(".sigPag");

const uno = document.querySelector(".uno");
const dos = document.querySelector(".dos");
const tres = document.querySelector(".tres");
const cuatro = document.querySelector(".cuatro");
const cinco = document.querySelector(".cinco");
const seis = document.querySelector(".seis");
const siete = document.querySelector(".siete");
const ocho = document.querySelector(".ocho");
const nueve = document.querySelector(".nueve");
const diez = document.querySelector(".diez");
const once = document.querySelector(".once");
const doce = document.querySelector(".doce");
const trece = document.querySelector(".trece");
const catorce = document.querySelector(".catorce");
const quince = document.querySelector(".quince");


const btn_atras1 = document.querySelector(".volver-pag1");
const btn_adelante3 = document.querySelector(".adelante-pag3");

const btn_atras2 = document.querySelector(".volver-pag2");
const btn_adelante4 = document.querySelector(".adelante-pag4");

const btn_atras3 = document.querySelector(".volver-pag3");
const btn_adelante5 = document.querySelector(".adelante-pag5");

const btn_atras4 = document.querySelector(".volver-pag4");
const btn_adelante6 = document.querySelector(".adelante-pag6");

const btn_atras5 = document.querySelector(".volver-pag5");
const btn_adelante7 = document.querySelector(".adelante-pag7");

const btn_atras6 = document.querySelector(".volver-pag6");
const btn_adelante8 = document.querySelector(".adelante-pag8");

const btn_atras7 = document.querySelector(".volver-pag7");
const btn_adelante9 = document.querySelector(".adelante-pag9");

const btn_atras8 = document.querySelector(".volver-pag8");
const btn_adelante10 = document.querySelector(".adelante-pag10");

const btn_atras9 = document.querySelector(".volver-pag9");
const btn_adelante11 = document.querySelector(".adelante-pag11");

const btn_atras10 = document.querySelector(".volver-pag10");
const btn_adelante12 = document.querySelector(".adelante-pag12");

const btn_atras11 = document.querySelector(".volver-pag11");
const btn_adelante13 = document.querySelector(".adelante-pag13");

const btn_atras12 = document.querySelector(".volver-pag12");
const btn_adelante14 = document.querySelector(".adelante-pag14");

const btn_atras13 = document.querySelector(".volver-pag13");
const btn_adelante15 = document.querySelector(".adelante-pag15");

const btn_atras14 = document.querySelector(".volver-pag14");
const btn_final = document.querySelector(".fin");

const num = document.querySelectorAll(".paso .num");
const progressCheck = document.querySelectorAll(".paso .check");

let max = 15;
let cont = 1;


btn_adelante2.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="uno"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-6.6%";
        dos.style.display = "unset";
        uno.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante3.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="dos"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-13.2%";
        tres.style.display = "unset";
        dos.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante4.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="tres"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-19.8%";
        cuatro.style.display = "unset";
        tres.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante5.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="cuatro"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-26.4%";
        cinco.style.display = "unset";
        cuatro.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante6.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="cinco"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-33%";
        seis.style.display = "unset";
        cinco.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante7.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="seis"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-39.6%";
        siete.style.display = "unset";
        seis.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante8.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="siete"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-46.2%";
        ocho.style.display = "unset";
        siete.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante9.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="ocho"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-52.8%";
        nueve.style.display = "unset";
        ocho.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante10.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="nueve"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-59.4%";
        diez.style.display = "unset";
        nueve.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante11.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="diez"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-66%";
        once.style.display = "unset";
        diez.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante12.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="once"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-72.6%";
        doce.style.display = "unset";
        once.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante13.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="doce"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-79.2%";
        trece.style.display = "unset";
        doce.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante14.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="trece"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    
    else{
        movPag.style.marginLeft = "-85.8%";
        catorce.style.display = "unset";
        trece.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

btn_adelante15.addEventListener("click", function (e){
    e.preventDefault;
    
    if(!document.querySelector('input[name="catorce"]:checked')) {
      Swal.fire(
        'Por favor, seleccione una opción para continuar',
        '',
        'warning'
      );
    }
    else{
        movPag.style.marginLeft = "-92.4%";
        quince.style.display = "unset";
        catorce.style.display = "none";
        num[cont - 1].classList.add("active");
        progressCheck[cont - 1].classList.add("active");
        cont += 1;
    }
});

function verificando(){
    var boto = document.getElementById("botg");
    if(boto.value === 'Guardar'){
        if(!document.querySelector('input[name="quince"]:checked')) {
            Swal.fire(
              'Por favor, seleccione una opción para continuar',
              '',
              'warning'
            );
            document.getElementById("val15").focus();
        }
    }
}

btn_atras1.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "0%";
    uno.style.display = "unset";
    dos.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras2.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "6.6%";
    dos.style.display = "unset";
    tres.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras3.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "13.2%";
    tres.style.display = "unset";
    cuatro.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras4.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "19.8%";
    cuatro.style.display = "unset";
    cinco.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras5.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "26.4%";
    cinco.style.display = "unset";
    seis.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras6.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "33%";
    seis.style.display = "unset";
    siete.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras7.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "39.6%";
    siete.style.display = "unset";
    ocho.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras8.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "46.2%";
    ocho.style.display = "unset";
    nueve.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras9.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "52.8%";
    nueve.style.display = "unset";
    diez.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras10.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "59.4%";
    diez.style.display = "unset";
    once.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras11.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "66%";
    once.style.display = "unset";
    doce.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras12.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "72.6%";
    doce.style.display = "unset";
    trece.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras13.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "79.2%";
    trece.style.display = "unset";
    catorce.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

btn_atras14.addEventListener("click", function (e){
    e.preventDefault;
    
    movPag.style.marginLeft = "85.8%";
    catorce.style.display = "unset";
    quince.style.display = "none";
    num[cont - 2].classList.remove("active");
    progressCheck[cont - 2].classList.remove("active");
    cont -= 1;
});

