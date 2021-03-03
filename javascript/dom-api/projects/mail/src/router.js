class Router {
  constructor(node) {
    this.node = node;
  }

  start() {
    window.addEventListener("hashchange", () => {
      this.render();
    });
  }

  activeRoute() {}

  render() {
    this.node.innerHTML = "";

    const currentRoute = this.activeRoute();

    const pTag = document.createElement("p");
    pTag.innerHTML = this.activeRoute();
    this.node.appendChild(pTag);
  }
}

module.exports = Router;
