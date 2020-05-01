var express = require('express');
const querystring= require('querystring');
const { exec } = require("child_process");
var app = express();
app.get('/', function (req, res) {
  res.send(req.param.say);
var saying= querystring.unescape(req.query.say);
var command = `/bin/bash /home/pi/talk/talk.sh '${saying}'`;
console.log(command);
exec(command ,(err,so,se) => {
	console.log(err);
	console.log(so);
	console.log(se);
}
)
console.log("Complete talker");
});
app.listen(3000, function () {
  console.log('talker app listening on port 3000!');
});
