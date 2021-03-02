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
  const handleFavoriteSubmit = (event) => {
    event.preventDefault();

    const favoriteInput = document.querySelector(".favorite-input");
    const favorite = favoriteInput.value;

    const newListLi = document.createElement("li");
    newListLi.textContent = favorite;

    const favoriteList = document.getElementById("sf-places");
    favoriteList.appendChild(newListLi);
  };

  const listSubmitButton = document.querySelector(".favorite-submit");
  listSubmitButton.addEventListener("click", handleFavoriteSubmit);

  // adding new photos

  const handlePhotoSubmit = (event) => {};

  const photoSubmitButton = document.querySelector(".photo-show-button");
  photoSubmitButton.addEventListener("click");
});
