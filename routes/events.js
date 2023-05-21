const express = require("express");

const router = express.Router();

router.get("/", (req, res) => {
  res.render("events/list");
});

router.get("/add", (req, res) => {
  res.render("events/add");
});

module.exports = router;
