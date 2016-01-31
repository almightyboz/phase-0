/*
Gradebook from Names and Scores
I worked on this challenge  with: Heather
This challenge took me 2 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]



// __________________________________________
// Write your code below.

function average(array) {
  var sum = 0;
  for(var x = 0; x < array.length; x++){
    sum += array[x];
  }
  return (sum/(array.length));
}


var gradebook = {
  Joseph: {
    testScores: scores[0],
  },
  Susan: {
    testScores: scores[1],
  },
  William: {
    testScores: scores[2],
  },
  Elizabeth: {
    testScores: scores[3],
  },
 addScore: function addScore(name, score) {
   gradebook[name].testScores.push(score);
  },
 getAverage: function() {}
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};


var students = ["Joseph", "Susan", "William", "Elizabeth"];

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ];






// __________________________________________
// Write your code below.

// var gradebook = {
//   Joseph: {
//     testScores: scores[0],
//   },
//   Susan: {
//     testScores: scores[1],
//   },
//   William: {
//     testScores: scores[2],
//   },
//   Elizabeth: {
//     testScores: scores[3],
//   },
//   addScore: function addScore(name, score) {
//     gradebook[name].testScores.push(score);
//  },
//   getAverage: function getAverage(name) {
//     return average(gradebook[name]);
//   }
// };


var average = function(grades) {
  var sumOfScores = 0;
  // console.log(sumOfScores);
  for (var score in grades) {
    // console.log(sumOfScores.typeof);
    sumOfScores += grades[score];
    // console.log(sumOfScores)
  }
  // console.log(grades.length)
  return sumOfScores/(grades.length);
}

console.log(average([1,2,3])=== 2);
console.log(average([3,4,5]));

var gradebook = {
  Joseph: {
    testScores: scores[0],
  },
  Susan: {
    testScores: scores[1],
  },
  William: {
    testScores: scores[2],
  },
  Elizabeth: {
    testScores: scores[3],
  },
  addScore: function addScore(name, score) {
    gradebook[name].testScores.push(score);
 },
  getAverage: function getAverage() {
  }
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
}


// __________________________________________
// Refactored Solution



var average = function(grades) {
  var sumOfScores = 0;
  for (var score in grades) {
     sumOfScores += grades[score];
  }
  return sumOfScores/(grades.length);
}

var gradebook = {
  Joseph: {
    testScores: scores[0],
  },
  Susan: {
    testScores: scores[1],
  },
  William: {
    testScores: scores[2],
  },
  Elizabeth: {
    testScores: scores[3],
  },
  addScore: function addScore(name, score) {
    gradebook[name].testScores.push(score);
 },
};

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};


// __________________________________________
// Reflect

// I learned that adding functions to objects isn't as difficult as I thought it would be, although I'm still exploring the applications of it. I suspect one can use functions within objects similarly to methods within classes in Ruby. JavaScript allows one to modify functions from without easily.
// With for loops, JavaScript can easily iterate over an array, or a set quantity like the number of properties in an object. It was with this challenge that I realized that we don't need to iterate using each loops like in Ruby.
// I didn't learn any new methods, aside from the methods used in the text code below.



// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)