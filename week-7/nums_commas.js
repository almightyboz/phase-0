/// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Charlie Bliss

////////////////////////////////////////////////////////////////////////
// Pseudocode
// Input - an integer number

// Define a function called separateComma
//    turn number to a string
//    reverse the string
//    create a counter object - start at 0
//    create a loop that will run until the string terminates
//        add 1 to the counter for every character in the string
//        IF character at index of (counter + 4) exists
//            IF counter's place is divisible by three
//                insert comma in between index 2 and index 3
//        ELSE
//            terminate loop
//             reverse string again
//              return string to user
// Output - a string that is the integer with inserted commas

////////////////////////////////////////////////////////////////////////
// Initial Solution

function separateComma(int){
  var array = int.toString().split("").reverse();
  var counter = 0;
  while (counter <= array.length) {
    if (array[(counter + 3)] != null){
        array.splice((counter+3),0,",");
        counter += 4;
    } else {
        break;
    }
  array = array.reverse().toString()
  }
  return array
}


////////////////////////////////////////////////////////////////////////
// Refactored Solution


function separateComma(int){
  return int.toLocaleString()
}

}
// Your Own Tests (OPTIONAL)

console.log(separateComma(1234567))

////////////////////////////////////////////////////////////////////////
// Reflection

// It was difficult because the mechanics of a for loop operate completely differently from each loops in Ruby. I wanted to use a for loop to be similar to each_slice in Ruby, but I couldn't make it work.
// I learned that for loops are the best way to iterate over arrays, our way was relatively a pain. We had fun with toLocaleString and splice.