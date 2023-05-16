+ function validateQuiz(event) {
        event.preventDefault();
        const quizForm = document.getElementById("form-perso");
        let isValid = true;

        // Validar que se haya seleccionado una opción en cada pregunta
        if (!quizForm.q1.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 1')
        } 

        if (!quizForm.q2.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 2')
        }

        if (!quizForm.q3.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 3')
        }

        if (!quizForm.q4.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 4')
        }
        if (!quizForm.q5.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 5')
        }
        if (!quizForm.q6.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 6')
        }
        if (!quizForm.q7.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 7')
        }
        if (!quizForm.q8.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 8')
        }
        if (!quizForm.q9.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 9')
        }
        if (!quizForm.q10.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 10')
        }
        if (!quizForm.q11.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 11')
        }
        if (!quizForm.q12.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 12')
        }
        if (!quizForm.q13.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 13')
        }
        if (!quizForm.q14.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 14')
        }
        if (!quizForm.q15.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 15')
        }
        if (!quizForm.q16.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 16')
        }
        if (!quizForm.q17.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 17')
        }
        if (!quizForm.q18.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 18')
        }
        if (!quizForm.q19.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 19')
        }
        if (!quizForm.q20.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 20')
        }
        if (!quizForm.q21.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 21')
        }
        if (!quizForm.q22.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 22')
        }
        if (!quizForm.q23.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 23')
        }
        if (!quizForm.q24.value) {
            isValid = false;
            Swal.fire('Por favor responda la pregunta 24')
        }
        
        // Si todas las preguntas fueron respondidas, enviar el formulario
        if (isValid) {
            quizForm.click();
        }
    }