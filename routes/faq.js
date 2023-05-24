const express = require("express");
const db = require("../utils/database");

const router = express.Router();


router.get("/", async (req, res) => {

  console.log("Get FAQs from db.");

  try {
    const result = await db.promise().query(`SELECT * FROM FAQs`);

console.log(result[0]);

    res.status(200).render("faq", {
      faqs: result[0],
    });
    
  } catch {
    res
      .status(500)
      .render("faq");
  }
});

module.exports = router;
