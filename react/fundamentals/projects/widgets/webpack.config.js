const path = require("path");
console.log("******", process.env.OPEN_WEATHER_API_KEY);
const webpack = require("webpack");

module.exports = {
  context: __dirname,
  entry: "./frontend/widgets.jsx",
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
  plugins: [
    new webpack.DefinePlugin({
      OPEN_WEATHER_API_KEY: JSON.stringify(process.env.OPEN_WEATHER_API_KEY),
    }),
  ],
};
