const express = require("express");
const db = require('../utils/database')


const router = express.Router();

router.get("/", async (req, res) => {
try{
  const result = await db.promise().query(`SELECT * FROM Stages`);

  console.log(result[0]);

 res.render("stages", {stages: result[0]});
}catch{
  res.render("stages", {stages: [{}]});
}
  
});

router.get("/:id", async (req, res) => {

  try{
    console.log("Get stage by Id")
    const id = parseInt(req.params.id)
    
    console.log("Id" + id);
    
      const result = await db.promise().query(`SELECT Events.Id as Id, DATE_FORMAT( Events.Date, "%M %d %Y") as Date, TIME_FORMAT(Events.Time , "%H:%i") as Time, Performers.Name as PerformerName, Performers.ImageUrl as PerformerImageUrl, Stages.Name as StageName, Stages.ImageUrl as StageImageUrl FROM Events INNER JOIN Performers ON Performers.Id = Events.PerformareId INNER JOIN Stages ON Stages.Id = Events.StageId WHERE Events.StageId = ${id}`);
    
       console.log(result[0][0].StageName);
     
      res.render("stage", {stages: result[0], stageName:result[0][0].StageName});
  }catch{
    res.render("stage", {stages: [], stageName:'' });

  }
  
  });

module.exports = router;
