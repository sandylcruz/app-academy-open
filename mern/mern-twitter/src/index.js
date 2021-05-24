require("dotenv").config();
const express = require("express");
const mongoose = require("mongoose");
const bodyParser = require("body-parser");

const { mongoURI } = require("./constants");
const tweets = require("./routes/api/tweets");
const users = require("./routes/api/users");

const app = express();

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use("/api/users", users);
app.use("/api/tweets", tweets);

app.get("/", (req, res) => res.send("Hello World"));
const port = process.env.PORT || 5000;

mongoose
  .connect(mongoURI, { useNewUrlParser: true })
  .then(() => console.log("Connected to MongoDB successfully"))
  .catch((err) => console.error(err))
  .then(() => {
    app.listen(port, () => console.log(`Server is running on port ${port}`));
  });
