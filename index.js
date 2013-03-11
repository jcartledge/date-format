var json = require("json-parse");

//sync version
var format_chars = json.sync("./data/format_characters.json");
console.log(format_chars);
