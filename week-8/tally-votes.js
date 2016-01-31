// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {},
};


/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// input - A data structure that links the name of a person to their voter ballot. Each ballot is a data structure in itself, linking an office to the name of the candidates the voter is voting for

// Loop through each voter name on the inputted structure
//   loop through each individual voter's vote (for each position) on the ballot
//      identify the office/position in that particular vote, and the candidate
//      assign that vote to another data structure that stores the names, vote counts, and office
//     IF the candidate's name is not in the structure for that position
//         add the name as a new item, and insert 1 as the count
//    ELSE IF the candidate's name is already in the structure
//          add one to the count of votes the candidate received for that office
// return a data structure that is a list of offices, and each office points to a list of candidate names and the number of votes each candidate received
// Take that data structure and loop through each S.G. office at a time
//    FOR each S.G. office, find the name of the candidate that is linked to the largest number of votes
//    Write that candidate's name to another data structure that stores the winners of the office
// return data structure of winners as the output

// output - A data structure that links an office in Student Government to the name of the person who received the most votes for that office

// __________________________________________
// Initial Solution

//EXTRACT NAME
//Loops through each item in votes to search for voter
for (var voter in votes) {
  // Tests if statement is true. Returns boolean.
  // statement is whether the votes object has a property called voter
   if (votes.hasOwnProperty(voter)) {
    // sets variable called ballot that is the "value" to the key that is the
      var ballot = votes[voter];
      console.log(ballot + "Is the ballot")
      console.log(voter+ "Is the voter")
      for (var office in ballot) {
        console.log(office + "is the office")
         if (ballot.hasOwnProperty(office)) {
            //console.log("It has the property")
            var name = ballot[office];
            console.log(name + "Is the name")
            //voteCount.office] = name; //left off here
         }
      }
   }
};

for (var voter in votes) {
   if (votes.hasOwnProperty(voter)) {
      var ballot = votes[voter];
      console.log(ballot + "Is the ballot");
      console.log(voter+ "Is the voter");
      for (var office in ballot) {
        console.log(office + "is the office");
         if (ballot.hasOwnProperty(office)) {
            var name = ballot[office];
            console.log(name + "Is the name");
            break;

         }
      }
   }
};


for (office in voteCount) {

}

console.log(voteCount)

// a = {
//   mother: "fucker",
//   ass: "hole",
// };

// console.log(a)
// console.log (a[0])
// console.log(a.mother)
// console.log(a.ass)


// for (var name in votes) {
//   if (votes.hasOwnProperty(name)) {
//     var office = votes[name];
//     for (var vote in office) {
//       if (office.hasOwnProperty(vote)) {
//         //CODE WE WANT IT TO DO!!!
//         voteCount.office[name] = 1
//       }
//     }
//   }
// }



//   console.log(votes.Alex)

 // voteCount.president["alex"] = 1
 console.log(voteCount)





// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection






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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)