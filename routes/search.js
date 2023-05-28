const express = require("express");
const db = require('../utils/database')


const router = express.Router();

router.post("/", async (req, res) => {
console.log(req.body.search)
  try{
    console.log("Search for");

    var searchKeyword = req.body.search;

    const result = await db.promise().query(`SELECT Events.Id as Id, DATE_FORMAT( Events.Date, "%M %d %Y") as Date,
    TIME_FORMAT(Events.Time , "%H:%i") as Time, Performers.Name as PerformerName,
    Performers.ImageUrl as PerformerImageUrl, Stages.Name as StageName,
    Stages.ImageUrl as StageImageUrl FROM Events INNER JOIN Performers ON Performers.Id = Events.PerformareId 
    INNER JOIN Stages ON Stages.Id = Events.StageId
    WHERE  Performers.Name LIKE '%${searchKeyword}%' OR Stages.Name LIKE '%${searchKeyword}%' 
    OR Events.Date LIKE '%${searchKeyword}%' OR Events.Time LIKE '%${searchKeyword}%'`);
    
    console.log(result[0][0]);
  

    res.render("search", {searchResults: result[0]});
     
  }catch{
    res.render("search", {searchResults: []});
  }

});



module.exports = router;
