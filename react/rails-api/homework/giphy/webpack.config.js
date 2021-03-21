require("dotenv").config();

const path = require("path");
const webpack = require("webpack");

module.exports = {
  context: __dirname,
  entry: "./giphy_search.jsx",
  output: {
    path: path.resolve(__dirname),
    filename: "bundle.js",
  },
  module: {
    rules: [
      {
        test: /\.jsx?$/,
        exclude: /(node_modules)/,
        use: {
          loader: "babel-loader",
          query: {
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

  plugins: [
    new webpack.DefinePlugin({
      GIPHY_API_KEY: JSON.stringify(process.env.GIPHY_API_KEY),
    }),
  ],
};
