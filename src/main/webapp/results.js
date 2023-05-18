// This function calculates the user's MBTI type based on their answers to the questions.
function calculateType() {
    // Get the user's answers to the questions.
    var question1 = document.querySelector('input[name="question1"]:checked').value;
    var question2 = document.querySelector('input[name="question2"]:checked').value;
    var question3 = document.querySelector('input[name="question3"]:checked').value;
    var question4 = document.querySelector('input[name="question4"]:checked').value;
  
    // Calculate the user's MBTI type.
    var type = '';
    switch (question1) {
      case 'E':
        type += 'E';
        break;
      case 'I':
        type += 'I';
        break;
    }
    switch (question2) {
      case 'S':
        type += 'S';
        break;
      case 'N':
        type += 'N';
        break;
    }
    switch (question3) {
      case 'T':
        type += 'T';
        break;
      case 'F':
        type += 'F';
        break;
    }
    switch (question4) {
      case 'J':
        type += 'J';
        break;
      case 'P':
        type += 'P';
        break;
    }
  
    // Display the user's MBTI type.
    document.getElementById('results').innerHTML = 'Your MBTI type is: ' + type;
  }
  