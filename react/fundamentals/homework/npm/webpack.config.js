const path = require("path");

module.exports = {
  context: __dirname,
  entry: "/entry.jsx",
  output: {
    path: path.resolve(__dirname, "app", "assets", "javascripts"),
    filename: "bundle.js",
  },
  resolve: {
    extensions: [".js", ".jsx", "*"],
  },
  devtool: "source-map",
};
