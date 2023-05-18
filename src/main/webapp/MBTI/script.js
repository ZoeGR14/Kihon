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
        result.innerHTML = `Tu tipo de personalidad MBTI es: ${personalityType}`;
    });