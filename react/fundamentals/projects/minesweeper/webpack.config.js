const path = require("path");
const webpack = require("webpack");

module.exports = {
  context: __dirname,
  entry: "./src/game.jsx",
  output: {
    // path: path.join(path.resolve(__dirname), "",
    path: path.resolve(path.join(__dirname, "./dist")),
    filename: "bundle.js",
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /(node_modules)/,
        use: {
          loader: "babel-loader",
          options: {
            presets: ["@babel/env", "@babel/react"],
          },
        },
      },
    ],
  },
  devtool: "source-map",
  resolve: {
    extensions: [".js", ".jsx", "*"],
  },
  plugins: [],
};
