const express = require("express");
const db = require("../utils/database");

const router = express.Router();

router.get("/", (req, res) => {
  res.render("contactus");
});

router.post("/", async (req, res) => {

  console.log("Insert Contact Us");

  try {
    await db
      .promise()
      .query(
        `INSERT INTO ContactUs (Id, FullName, Email, Intestion, Body) VALUES (NULL, '${req.body.fullName}', '${req.body.email}', '${req.body.intention}', '${req.body.body}')`
      );

    res.status(200).render("contactus", {
      contactusformstatus: "Thanks for your feedback 🥰",
    });
    
  } catch {
    res
      .status(500)
      .render("contactus", { contactusformstatus: "Please try again 🥺" });
  }
});

module.exports = router;
