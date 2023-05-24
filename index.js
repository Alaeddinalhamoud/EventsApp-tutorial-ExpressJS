const express = require("express");

const app = express();

app.use(express.static(__dirname + '/public'))

app.use(express.urlencoded({extended: true}))

app.set("view engine", "ejs");

const eventsData = require("./utils/events"); 

app.get("/", (req, res) => {
 
  const viewData = {
    events: eventsData.events
  };

  res.render("index", viewData);
})



 
 const eventRouter = require("./routes/events")

app.use("/events", eventRouter)

const contactusRouter = require("./routes/contactus")

app.use("/contactus", contactusRouter)

const faqRouter = require("./routes/faq")

app.use("/faq", faqRouter)

app.listen(5000);
