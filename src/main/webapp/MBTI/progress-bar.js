function updateProgressBar() {
    var radioButtons = document.querySelectorAll("input[type=radio]");
    for (var i = 0; i < radioButtons.length; i++) {
        console.log(radioButtons[i]);
    }


    var selectedCount = 0;

    for (var i = 0; i < radioButtons.length; i++) {
        if (radioButtons[i].checked) {
            selectedCount++;
        }
    }

    var progressBar = document.getElementById("progress-bar");
    progressBar.style.width = (selectedCount / radioButtons.length) * 100 + "%";
}