const path = require("path");

module.exports = {
  mode: "development",
  context: __dirname,
  entry: "./frontend/twitter.js",
  output: {
    path: path.join(__dirname, "app", "assets", "javascripts"),
    filename: "bundle.js",
    devtoolModuleFilenameTemplate: "[resourcePath]",
    devtoolFallbackModuleFilenameTemplate: "[resourcePath]?[hash]",
  },
  devtool: "source-map",
};
