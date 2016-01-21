
 /// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with:

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


// 000,0
// 000,00
///000,000
///000,000,0

// Output - a string that is the integer with inserted commas

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




console.log(separateComma(1234567))


// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection