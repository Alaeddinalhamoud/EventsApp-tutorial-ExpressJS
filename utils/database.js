const mysql = require("mysql2");

module.exports = mysql.createConnection({
  host: "db4free.net",
  user: "hima_hassen",
  password: "hima_hassen",
  database: "hima_eventdb",
});
