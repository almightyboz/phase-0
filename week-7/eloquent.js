
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

// var number = 7
// number = number * number
// console.log(number)

// prompt("What is your favorite food?")
// alert("That's my favorite, too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// How to get it to stop exactly at 100?
// var number = 1;
// while (number <= 99) {
//     if (number % 3 === 0 && number % 5 !== 0) {
//         console.log("Fizz");
//         number += 1;
//       }
//     if (number % 3 !== 0 && number % 5 === 0) {
//         console.log("Buzz");
//         number += 1;
//       }
//     if (number % 3 === 0 && number % 5 === 0) {
//         console.log("FizzBuzz");
//         number += 1;
//       }
//     if  (number % 3 !== 0 && number % 5 !== 0) {
//         console.log(number);
//         number += 1;
//       }
// }

// Functions

// Complete the `minimum` exercise.

function min (number1, number2) {
  if number1 >= number2
  return number2;
  if number1 < number2
  return number1;
}

console.log(min(0, 10));
console.log(min(0, -10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.