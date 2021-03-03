document.addEventListener("DOMContentLoaded", () => {
  let navItems = Array.from(document.getElementById(".sidebar-nav li"));
  let content = document.querySelector(".content");

  window.location.hash = "#inbox";

  navItems.forEach((navItem) => {
    navItem.addEventListener("click", () => {
      let name = navItem.innerText.toLowerCase;
      window.location = name;
    });
  });
});
