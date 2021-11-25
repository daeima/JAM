const past = document.getElementById("past")
const future = document.getElementById("future")
const futureBackground = document.getElementById("futureBackground")
const pastBackground = document.getElementById("pastBackground")

const initHomepage(){
  past.addEventListener("click", => {
    futureBackground.classlist.add("lessOpacity")
  });
}
