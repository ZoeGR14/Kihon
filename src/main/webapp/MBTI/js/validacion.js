var btnE = document.getElementById("enviar"),
        form = document.getElementById("form-perso");
form.addEventListener("submit", function (e) {
    e.preventDefault();
    var
            r1 = document.getElementsByName("q1"),
            r2 = document.getElementsByName("q2"),
            r3 = document.getElementsByName("q3"),
            r4 = document.getElementsByName("q4"),
            r5 = document.getElementsByName("q5"),
            r6 = document.getElementsByName("q6"),
            r7 = document.getElementsByName("q7"),
            r8 = document.getElementsByName("q8"),
            r9 = document.getElementsByName("q9"),
            r10 = document.getElementsByName("q10"),
            r11 = document.getElementsByName("q11"),
            r12 = document.getElementsByName("q12"),
            r13 = document.getElementsByName("q13"),
            r14 = document.getElementsByName("q14"),
            r15 = document.getElementsByName("q15"),
            r16 = document.getElementsByName("q16"),
            r17 = document.getElementsByName("q17"),
            r18 = document.getElementsByName("q18"),
            r19 = document.getElementsByName("q19"),
            r20 = document.getElementsByName("q20"),
            r21 = document.getElementsByName("q21"),
            r22 = document.getElementsByName("q22"),
            r23 = document.getElementsByName("q23"),
            r24 = document.getElementsByName("q24"),
            r25 = document.getElementsByName("q25"),
            r26 = document.getElementsByName("q26"),
            r27 = document.getElementsByName("q27"),
            r28 = document.getElementsByName("q28"),
            r29 = document.getElementsByName("q29"),
            r30 = document.getElementsByName("q30"),
            r31 = document.getElementsByName("q31"),
            r32 = document.getElementsByName("q32"),
            r33 = document.getElementsByName("q33"),
            r34 = document.getElementsByName("q34"),
            r35 = document.getElementsByName("q35"),
            r36 = document.getElementsByName("q36"),
            r37 = document.getElementsByName("q37"),
            r38 = document.getElementsByName("q38"),
            r39 = document.getElementsByName("q39"),
            r40 = document.getElementsByName("q40"),
            r41 = document.getElementsByName("q41"),
            r42 = document.getElementsByName("q42"),
            r43 = document.getElementsByName("q43"),
            r44 = document.getElementsByName("q44"),
            r45 = document.getElementsByName("q45"),
            r46 = document.getElementsByName("q46"),
            r47 = document.getElementsByName("q47"),
            r48 = document.getElementsByName("q48"),
            r49 = document.getElementsByName("q49"),
            r50 = document.getElementsByName("q50"),
            r51 = document.getElementsByName("q51"),
            r52 = document.getElementsByName("q52"),
            r53 = document.getElementsByName("q53"),
            r54 = document.getElementsByName("q54"),
            r55 = document.getElementsByName("q55"),
            r56 = document.getElementsByName("q56"),
            r57 = document.getElementsByName("q57"),
            r58 = document.getElementsByName("q58"),
            r59 = document.getElementsByName("q59"),
            r60 = document.getElementsByName("q60");
    var radios = [r1, r2, r3, r4, r5, r6, r7, r8, r9, r10,
        r11, r12, r13, r14, r15, r16, r17, r18, r19, r20,
        r21, r22, r23, r24, r25, r26, r27, r28, r29, r30,
        r31, r32, r33, r34, r35, r36, r37, r38, r39, r40,
        r41, r42, r43, r44, r45, r46, r47, r48, r49, r50,
        r51, r52, r53, r54, r55, r56, r57, r58, r59, r60];
    let allSelected = 0;
    for (var i = 0; i < radios.length; i++) {
        if (radios[i][0].checked === true || radios[i][1].checked === true) {
            allSelected++;
        }
    }

    if (allSelected !== 60) {
        Swal.fire({
            title: "¡Atención!",
            text: "Responda todas las preguntas, por favor",
            icon: "warning",
            confirmButtonText: 'Vale'
        });
    } else {
        const formulario = document.getElementById("form-perso");
        const result = document.getElementById("result");
        formulario.addEventListener("submit", (event) => {
            event.preventDefault();
            let scoreE = 0, scoreI = 0, scoreS = 0, scoreN = 0, scoreT = 0, scoreF = 0, scoreJ = 0, scoreP = 0;
            const answers = new FormData(formulario);
            for (let answer of answers.values()) {
                switch (answer) {
                    case "E":
                        scoreE++;
                        break;
                    case "I":
                        scoreI++;
                        break;
                    case "S":
                        scoreS++;
                        break;
                    case "N":
                        scoreN++;
                        break;
                    case "T":
                        scoreT++;
                        break;
                    case "F":
                        scoreF++;
                        break;
                    case "J":
                        scoreJ++;
                        break;
                    case "P":
                        scoreP++;
                        break;
                }
            }

            const firstLetter = (scoreE > scoreI ? "E" : "I") + (scoreS > scoreN ? "S" : "N");
            const secondLetter = (scoreT > scoreF ? "T" : "F") + (scoreJ > scoreP ? "J" : "P");
            const personalityType = firstLetter + secondLetter;
            document.getElementById("personalityType").value = personalityType;
            formulario.submit();
            //es q debería jalar ahí, pero ns
        });
    }
});
