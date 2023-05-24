const express = require("express");
const db = require('../utils/database')


const router = express.Router();

router.get("/", async (req, res) => {

  const result = await db.promise().query(`SELECT * FROM Events`);

   console.log(result[0]);
 
  res.render("event", {events: result[0]});
});



module.exports = router;
