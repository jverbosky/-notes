var fs = require('fs')
var myNumber = undefined

function addOne(callback) {
  fs.readFile('number.txt', function doneReading(err, fileContents) {
    myNumber = parseInt(fileContents)
    myNumber++
    callback()
  })
}

function logMyNumber() {
  console.log("logMyNumber: " + myNumber)  // logMyNumber: 2
  console.log("logMyNumber * 2: " + (myNumber * 2))  // logMyNumber * 2: 4
  sumTest(myNumber)  // pass to another function
}

function sumTest(n) {
  console.log("sumTest: " + (n + 10))  // sumTest: 12
  product = n * 3
  console.log("product: " + product)  // product: 6
}

// Call the function that needs the value
// Can't return value from a callback, but can use it in the function
addOne(logMyNumber)  // logMyNumber is the callback function
