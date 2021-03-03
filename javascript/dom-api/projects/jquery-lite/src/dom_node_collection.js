class DOMNodeCollection {
  constructor(nodes) {
    this.nodes = nodes;
  }

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

  attr(key, value) {
    this.nodes.forEach((node) => {
      node.setAttribute(key, value);
    });
  }

  addClass(newClass) {
    this.nodes.forEach((node) => {
      node.classList.add(newClass);
    });
  }
  removeClass(oldClass) {
    this.nodes.forEach((node) => {
      node.classList.remove(oldClass);
    });
  }

  children() {
    let childNodes = [];

    this.nodes.forEach((node) => {
      let childNodeList = node.children;
      childNodes = childNodes.concat(childNodeList);
    });

    return new DOMNodeCollection(childNodes);
  }

  parent() {
    let parentNodes = [];

    this.nodes.forEach((node) => {
      let parentNodeList = node.parent;
      parentNodes = parentNodes.concat(parentNodeList);
    });

    return new DOMNodeCollection(parentNodes);
  }

  find(selector) {
    let matches = [];

    this.nodes.forEach((node) => {
      let nodeList = node.querySelectorAll(selector);
      matches = matches.concat(nodeList);
    });

    return new DOMNodeCollection(matches);
  }

  remove() {
    this.nodes.forEach((node) => {
      node.parentNode.removeChildNode(node);
    });
  }
}

module.exports = DOMNodeCollection;
