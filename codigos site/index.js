window.onscroll = function () {
    if (window.scrollY < inicio.offsetHeight) {
        header1.style = "background-color: rgba(56, 47, 47, 0.527);";
    }
    if (window.scrollY >= inicio.offsetHeight) {
        header1.style = "background-color: rgb(56, 47, 47);";
    }
}