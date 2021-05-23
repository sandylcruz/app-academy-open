require("dotenv").config();
const express = require("express");
const mongoose = require("mongoose");

const { mongoURI } = require("./constants");

mongoose
  .connect(mongoURI, { useNewUrlParser: true })
  .then(() => console.log("Connected to MongoDB successfully"))
  .catch((err) => console.error(err));

const app = express();
app.get("/", (req, res) => res.send("Hello World"));
const port = process.env.PORT || 5000;
app.listen(port, () => console.log(`Server is running on port ${port}`));
