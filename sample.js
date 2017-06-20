'use strict'

const fs = require('fs')
const readline = require('readline')

const heyYall = function (inFile) {

  const rl = readline.createInterface({
  input: fs.createReadStream('data/names.txt')

})
  rl.on('line', (line) => {
    console.log('Hey ' + line)
  })
}

// rl.question('What do you think of Node.js? ', (answer) => {
//   // TODO: Log the answer in a database
//   console.log(`Thank you for your valuable feedback: ${answer}`)
//
//   rl.close()
// })

module.exports = heyYall
