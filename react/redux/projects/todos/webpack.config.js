const path = require("path");
const webpack = require("webpack");

module.exports = {
  context: __dirname,
  entry: "./todo_redux.jsx",
  output: {
    path: path.resolve(__dirname),
    filename: "./frontend/dist/bundle.js",
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
};
