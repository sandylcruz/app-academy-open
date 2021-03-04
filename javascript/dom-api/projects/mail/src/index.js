const Router = require("./router.js");
const Inbox = require("./inbox.js");
const Sent = require("./sent.js");
const Compose = require("./compose.js");

const routes = {
  inbox: Inbox,
  sent: Sent,
  compose: Compose,
};

document.addEventListener("DOMContentLoaded", () => {
  const content = document.querySelector(".content");

  const router = new Router(content, routes);
  router.start();

  window.location.hash = "#inbox";
  const navItems = Array.from(document.querySelectorAll(".sidebar-nav li"));

  navItems.forEach((navItem) => {
    navItem.addEventListener("click", () => {
      const name = navItem.innerText.toLowerCase();
      location.hash = name;
    });
  });
});
