const express = require("express");

const app = express();

app.use(express.static(__dirname + '/public'))

app.use(express.urlencoded({extended: true}))

app.set("view engine", "ejs");

const homeRouter = require("./routes/home")

app.use("/", homeRouter)

 
 const eventRouter = require("./routes/event")

app.use("/event", eventRouter)

const contactusRouter = require("./routes/contactus")

app.use("/contactus", contactusRouter)

const faqRouter = require("./routes/faq")

app.use("/faq", faqRouter)

const stageRouter = require("./routes/stage")

app.use("/stage", stageRouter)

const performerRouter = require("./routes/performer")

app.use("/performer", performerRouter)

app.listen(5000);

