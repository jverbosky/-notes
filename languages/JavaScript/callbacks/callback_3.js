// So a callback is basically "forwarding" a value to another function?

var fs = require('fs')
var myNumber = undefined

function addOne() {
  fs.readFile('number.txt', function doneReading(err, fileContents) {
    myNumber = parseInt(fileContents)
    myNumber++
    logMyNumber()  // variation without using "callback" as argument and function call
  })
}

function logMyNumber() {
  console.log(myNumber)
}

addOne()  // 2