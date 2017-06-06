var fs = require('fs')
var myNumber = undefined

function doneReading(err, fileContents) {
  myNumber = parseInt(fileContents)
  myNumber++
  if (myNumber == 2) {
    numberIsTwo()
  } else {
    numberIsNotTwo()
  }
}

function numberIsTwo() {
  console.log("The number is 2.")  // The number is 2.
}

function numberIsNotTwo() {
  console.log("The number is not 2.")
}

function addOne() {
  fs.readFile('number.txt', doneReading)  // read the file, then call doneReading()
}

addOne()