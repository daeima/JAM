const initToggle = () => {
const past = document.getElementById("past")
const future = document.getElementById("future")
const futureBackground = document.getElementById("futureBackground")
const pastBackground = document.getElementById("pastBackground")

past.addEventListener("click", (event) => {
  if (futureBackground.classList.contains("fullOpacity")){
  futureBackground.classList.toggle("lessOpacity");
  }
  if (futureBackground.classList.contains("lessOpacity")) {
    futureBackground.classList.toggle("fullOpacity");
  }
  if (futureBackground.classList.contains("lessOpacity")) {
    pastBackground.classList.toggle("fullOpacity");
  }
  });

future.addEventListener("click", (event) => {
  if (pastBackground.classList.contains("fullOpacity")){
      pastBackground.classList.toggle("lessOpacity");
    }
  if (pastBackground.classList.contains("lessOpacity")) {
    pastBackground.classList.toggle("fullOpacity");
  }
  if (pastBackground.classList.contains("lessOpacity")){
      futureBackground.classList.toggle("fullOpacity");
    }

  });
};

export {initToggle}
