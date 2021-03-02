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
    favorite.value = "";

    const newListLi = document.createElement("li");
    newListLi.textContent = favorite;

    const favoriteList = document.getElementById("sf-places");
    favoriteList.appendChild(newListLi);
  };

  const listSubmitButton = document.querySelector(".favorite-submit");
  listSubmitButton.addEventListener("click", handleFavoriteSubmit);

  // adding new photos

  const showPhotoForm = (event) => {
    const formContainer = document.querySelector(".photo-form-container");
    formContainer.classList.remove("hidden");
  };

  const photoFormShowButton = document.querySelector(".photo-show-button");
  photoFormShowButton.addEventListener("click", showPhotoForm);

  const handlePhotoSubmit = (event) => {
    event.preventDefault();

    const photoInput = document.querySelector("");
    const photoValue = photoInput.value;
    photoValue.value = "";

    const newImg = document.createElement("img");
    newImg.src = photoUrl;

    const newLi = document.createElement("li");
    newLi.appendChild(newImg);

    const allPhotos = document.getElementById(".dog-photos");
    allPhotos.appendChild(newLi);
  };

  const photoSubmitButton = document.querySelector(".photo-show-button");
  photoSubmitButton.addEventListener("click", handlePhotoSubmit);
});
