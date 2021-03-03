document.addEventListener("DOMContentLoaded", () => {
  let content = document.querySelector(".content");

  window.location.hash = "#inbox";
  let navItems = Array.from(document.querySelectorAll(".sidebar-nav li"));

  navItems.forEach((navItem) => {
    navItem.addEventListener("click", () => {
      let name = navItem.innerText.toLowerCase;
      location.hash = name;
    });
  });
});
