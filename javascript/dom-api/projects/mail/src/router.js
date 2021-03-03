class Router {
  constructor(node, routes) {
    this.node = node;
    this.routes = routes;
  }

  start() {
    this.render();

    window.addEventListener("hashchange", () => {
      this.render();
    });
  }

  activeRoute() {
    const hash = window.location.hash.substr(1);
    const component = this.routes[hash];
    return component;
  }

  render() {
    this.node.innerHTML = "";

    const component = this.activeRoute();

    if (component) {
      this.node.innerHTML = "";
      const componentNode = component.render();
      this.node.appendChild(componentNode);
    } else {
      this.node.innerHTML = "";
    }

    const pTag = document.createElement("p");
    pTag.innerHTML = this.activeRoute();
    this.node.appendChild(pTag);
  }
}

module.exports = Router;
