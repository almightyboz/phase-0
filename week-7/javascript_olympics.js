// JavaScript Olympics

// I paired with: Hagai Zwick on this challenge.

// This challenge took me 3 hours.



// in - array of athletes(names as objects, events as properties)
// add a win property to the hash
// set up a loop that will iterate through the array
//    loop will print phrase with words inserted in
//out - printed string, saying phrase with name and event included in the string

// function win(array) {
//   for(var i =0; i > array.length; i++){
//     array.win = array.name + "won the "+ array.event;
//   }
//     return array.win;
// };

// var testArray = {
//   running: "Tom",
//   golf: "Tiger"
// }

// console.log(win(testArray))

/////////////

// ======
//   input : a string
//   output : a reverse string

//   pesodocode :
// 1. take the string and convert it to array
// 2.take the array and reverse it.
// 3.conert the array back to a string

// function reverse(name) {
//   var newArray = name.split("");
//   newArray = newArray.reverse();
//   var string = newArray.join('');
//   return string;
// };
// console.log(reverse('heloooooooo'))

///////////////


// input: Array of number
// ouput:Array of numbe

// Pessoducode:
// 1. Craet a function, adn within the function creat an empty list
// 2. creat a loop that wold go over each number every time
// 3. in the loop there is an if statment that test if the number is even or not.
// 4. If the number is even, then push it to the empty list.
// 5. Else, continue to the next elment.
// 6. Return the new Array.


function findEven(array){
  var newList = [];
  for(var j = 0; j < array.length; j++) {
    if (array[j] % 2 === 0) {
      newList.push(array[j]);
    } else {
      continue;
    }
  }
  return newList;
}

var myArray = [12, 42, 1, 6, 8, 99, 0, 2, 43 ,6]

console.log(findEven(myArray))

/////////////////



// "We built this city"


function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// I solidified how to build functional for loops in JS and when to use indexs instead of counters within the for loops.
// Constructor functions are a different way of writing JS objects that allow us to easily attach methods as properties to functions. They also make swapping out values of properties fairly easy. They are similar to Ruby classes in that they need to be instantiated with the name of the instance and the variables that make up the information that makes the instance unique. They are different because they don't inherit from each other the way that Ruby classes do, only from prototypes. (Which I am still building my knowledge of.)