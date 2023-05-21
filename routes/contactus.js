const express = require("express");

const router = express.Router();

router.get("/", (req, res) => {
    
  res.render("contactus");
})

router.post("/", (req, res) => {
  console.log(req.body.firstName);
  res.send("Hi");
})

module.exports = router;
