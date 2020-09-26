// ES6 import support.
require = require("esm")(module)

// Load env variables.
require('dotenv').config()

// Start.
module.exports = require("./serve.js")
