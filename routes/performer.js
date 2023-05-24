const express = require("express");
const db = require('../utils/database')


const router = express.Router();

router.get("/", async (req, res) => {

  const result = await db.promise().query(`SELECT * FROM Performers`);

   console.log(result[0]);
 
  res.render("performer", {performers: result[0]});
});

module.exports = router;
