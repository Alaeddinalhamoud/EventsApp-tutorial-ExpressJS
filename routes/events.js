const express = require("express");
const db = require('../utils/database')


const router = express.Router();

router.get("/", async (req, res) => {

  const result = await db.promise().query(`SELECT * FROM Events`);

   console.log(result[0]);
 
  res.render("events/list", {events: result[0]});
});

router.get("/add", async (req, res) => {

const result = await db.promise().query(`SELECT * FROM Events`);
 console.log(result[0]);
  res.render("events/add", {events: result[0]});
});


router.post('/add', (req, res) => {
  console.log(req.body.firstName);

  db.promise().query(`INSERT INTO Events VALUES('${req.body.id}', '${req.body.name}')`)

    
});


module.exports = router;
