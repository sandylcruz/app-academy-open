class DOMNodeCollection {
  constructor(nodes) {
    this.nodes = nodes;
  }

  // $l("...").html("hello")
  // $l("...").html() (first case)

  html(htmlString) {
    if (htmlString) {
      const innerHTML = htmlString;

      this.nodes.forEach((node) => {
        node.innerHTML = htmlString;
      });
    } else {
      const innerHTML = this.nodes[0];
      return innerHTML;
    }
  }

  empty() {
    this.nodes.forEach((node) => {
      node.html = "";
    });
  }

  append(children) {
    this.nodes.forEach((node) => {
      node.innerHTML += children;
    });
  }

  attr() {}
  addClass() {}
  removeClass() {}
}

module.exports = DOMNodeCollection;
