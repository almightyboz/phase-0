//9.2.2 TRANSLATE RUBY TO JAVASCRIPT

// Fizzbuzz

// Pseudocode:
// input - go command
// set up command to print every number from one to 100
//    but, run a check on each number before it prints
//      if the number is divisible by 3 and 5
//          print fizzbuzz
//      if number is only divisible by 3
//          print fizz
//      if the number is only divisible by 5
//          print buzz
//      if the number is divisible by neither 3 nor 5
//          print the number
// output - all numbers from 1 to 100, in Fizzbuzz format

function fizzbuzz() {
  for (var number = 1; number <= 100; number ++) {
    if (number % 5 === 0 && number % 3 === 0) {
      console.log("Fizzbuzz");
    } else if (number % 3 === 0) {
      console.log("Fizz");
    } else if (number % 5 === 0) {
      console.log("Buzz");
    } else {
      console.log(number);
    }
  }
}

fizzbuzz();

////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Calculate median

//PSEUDOCODE
//INPUT - list of data elements
// sort the list into numeric or alphabetical order
// IF there's an even number of elements in the data set
//    find the number x that is half of the number of elements
//    take the two middle numbers based on that number
//    return the average of those two middle numbers
//ELSE IF there's an odd number of elements in the data set
//    divide number of elements on list in two (number should end in 0.5)
//    add 0.5 to half to the number in line 43. That is the index to the middlemost number in the set
//    identify and return the item at the index number specified in line 44
// OUTPUT - middle element in the data set.
//If there's an even number of items, will have to

// 1,2,3,4,5


//ORIGINAL FLAVOR
// function median(list) {
//   list = list.sort();
//   var half = ((list.length) / 2);
//   // even numbers
//   if (list.length % 2 === 0) {
//     console.log("It's an even number");
//     var otherHalf = half - 1 ;
//     var numerator = list[half] + list[otherHalf];
//     return numerator / 2;
//   // odd numbers
//   } else {
//     // console.log("It's an odd number");
//     // // console.log(half + 0.5);
//     // console.log(list[(half - 0.5)]);
//     return list[(half - 0.5)];
//   }
// }

//REFACTORED
function median(list) {
  list.sort();
  var half = Math.floor(list.length / 2);
  if (list.length % 2 === 0) {
    return (list[half] + list[half - 1]) / 2;
  } else {
    return list[half];
  }
}

//TEST CODE
list0 = [1,2,3,4];
list1 = [1,2,3,4,5];
list2 = ["apple","cherry","banana"];
list3 = [-100, 100];

console.log(median(list0) === 2.5);
console.log(median(list1) === 3);
console.log(median(list2) === "banana");
console.log(median(list3) === 0);

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// REFLECTION
//
// What concepts did you solidify in working on this challenge?
// Practical aspects of how to test solutions for the second challenge, and control flow in JS for the Fizzbuzz challenge.

// What was the most difficult part of this challenge?
// Finding median in a way that makes sense. And figuring out how to use floor division in JavaScript, because the standard division in Ruby is floor division. I ran into problems assuming that JS used it in the same way, and it was onerous trying to use it that way

// Did you solve the problem in a new way this time?
// For the first problem, I used control flow in a better way than I had. Instead of testing if a number divides by three and NOT five, five and NOT three, and neither three nor five, I put the test for 3 and 5 as the first if statement. That way, the possiblity is ruled out first. And the last statement correctly assumes that the number in question has failed all three tests, so it can only be printed out as is. I tried to use median differently by dividing the list into two sub-lists and averaging the last and first numbers of the two lists, or finding the odd digit, as a solution. This was a false end because I couldn't find a way to make the slice work with the math as I understood it, so I abandoned it.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// It was a little less elaborate because I have more experience writing pseudocode. And it used control flow better in both. Full disclosure, I didn't do the median challenge, but I solved it on my own months ago as a personal challenge. I added it to this assignment because the fizzbuzz challenge took me maybe half an hour, with pseudocode, and worked on the first try. It was so easy that I felt guilty, and wanted to do another one for the challenge.