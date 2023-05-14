var btnE = document.getElementById("enviar"),
        form = document.getElementById("testVocacional");

btnE.addEventListener("click", function (e) {
    e.preventDefault();

    var r1 = document.getElementsByName("p1"),
            r2 = document.getElementsByName("p2"),
            r3 = document.getElementsByName("p3"),
            r4 = document.getElementsByName("p4"),
            r5 = document.getElementsByName("p5"),
            r6 = document.getElementsByName("p6");

    var radios = [r1, r2, r3, r4, r5, r6];

    let allSelected = 0;

    for (var i = 0; i < radios.length; i++) {
        if (radios[i][0].checked === true || radios[i][1].checked === true || radios[i][2].checked === true) {
            allSelected++;
        }
    }

    if (allSelected === 6) {
        form.submit();
    } else {
        Swal.fire({
            title: "¡Atención!",
            text: "Responda todas las preguntas, por favor",
            icon: "warning",
            confirmButtonText: 'Vale'
        });
    }
});