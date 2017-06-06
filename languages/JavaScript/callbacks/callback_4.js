var fs = require('fs')
var myNumber = undefined

function doneReading(err, fileContents) {
  myNumber = parseInt(fileContents)
  console.log("doneReading 1: " + myNumber)  // doneReading 1: 1
  myNumber++
  console.log("doneReading 2: " + myNumber)  // doneReading 2: 2
  logMyNumber()
}

function logMyNumber() {
  console.log("logMyNumber: " + myNumber)  // logMyNumber: 2
}

function addOne() {
  fs.readFile('number.txt', doneReading)  // read the file, then call doneReading()
}

addOne()