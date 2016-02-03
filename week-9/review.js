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

//Calculate median
//PSEUDOCODE
//INPUT - list of data elements
// sort the list into numeric or alphabetical order
// IF there's an even number of elements in the data set
//    find the number x that is half of the number of elements
//    create two lists from the input list of x elements each
//    find the average of the last item in the first list and the first item of the second list
//     return number as the median
//ELSE IF there's an odd number of elements in the data set
//    divide number of elements on list in two (number should end in 0.5)
//    add 0.5 to half to the number in line 43. That is the index to the middlemost number in the set
//    identify and return the item at the index number specified in line 44
// OUTPUT - middle element in the data set.
//If there's an even number of items, will have to

function median(list) {
  list.sort();

}

//TEST
list1 = [1,2,3,4,5];
list2 = ["apple","cherry","banana"];
list3 = [-100, 100];

console.log(median(list1) === 3);
console.log(median(list2) === "banana");
console.log(median(list3) === 0);
// console.log()