document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  // adding SF places as list items

  // Your code here

  const favoriteForm = document.getElementById("favorite-input-form");

  favoriteForm.addEventListener("submit", (event) => {
    event.preventDefault();

    // clearing
    const favoriteInput = document.querySelector(".favorite-input");
    const inputValue = favoriteInput.value;
    favoriteInput.value = "";

    // adding
    const ul = document.getElementById("sf-places");
    const li = document.createElement("li");
    li.textContent = inputValue;
    ul.appendChild(li);
  });

  // adding new photos

  // Your code here
});
