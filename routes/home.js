const express = require("express");
const db = require('../utils/database')


const router = express.Router();

router.get("/", async (req, res) => {
  try{
    console.log("Getting Joint Events")
    const result = await db.promise().query(`SELECT Events.Id as Id, DATE_FORMAT( Events.Date, "%M %d %Y") as Date, TIME_FORMAT(Events.Time , "%H:%i") as Time, Performers.Name as PerformerName, Performers.ImageUrl as PerformerImageUrl, Stages.Name as StageName, Stages.ImageUrl as StageImageUrl FROM Events INNER JOIN Performers ON Performers.Id = Events.PerformareId INNER JOIN Stages ON Stages.Id = Events.StageId`);
  
     console.log(result[0]);
   
    res.render("index", {events: result[0]});
  }catch{
    res.render("index", {events: [{}]});
  }

});



module.exports = router;
