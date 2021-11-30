function drop() {
  const acc = document.getElementsByClassName("more");
  for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function () {
      this.classList.toggle("active");
      const panel = document.getElementsByClassName("interview-panel");
      if (panel.style.display === "block") {
        panel.style.display = "none";
      } else {
        panel.style.display = "block";
      }
    });
  };
}

export { drop };
