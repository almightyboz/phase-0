
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var number = 7
number = number * number
console.log(number)

// prompt("What is your favorite food?")
// alert("That's my favorite, too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var number = 1;
while (number <= 100) {
    if (number %  3 === 0 && number % 5 !== 0){
        console.log("Fizz");
      } else if (number % 3 !== 0 && number % 5 === 0){
        console.log("Buzz");
      } else if (number % 3 === 0 && number % 5 === 0) {
        console.log("FizzBuzz");
      } else {
        console.log(number);
      }
  number += 1;

// Functions

// Complete the `minimum` exercise.

function min (number1, number2) {
  if (number1 >= number2)
  return number2;
  if (number1 < number2)
  return number1;
}

console.log(min(0, 10));
console.log(min(0, -10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = { myName: "Emily B.", myAge: 29, faveFoods: ["chili cheese fries", "cinnamon buns", "ribs"], myQuirk: "Size 9 feet"
}

console.log(me.myAge)