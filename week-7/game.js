// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Collect the amulet, avoid the monster
// Overall mission: Move step by step on the grid from the SW corner of the room diagonally to the amulet on the NE corner of the room. Avoid monster's gaze.
// Goals: Collect amulet, avoid insanity.
// Characters:
//        player -> Plucky hero. Can look around and move in all directions at any time.
//        monster -> Always facing a cardinal direction (ie N,S,E,W). Starts game on random position with random bearing. Makes random moves throughout the game. (It only takes one move at a time. Turning is one move. Moving in the direction of it's bearing is one move.) If the player strays in front of the creature's eyepath (i.e. monster's bearing is "facing" the player and it has an unimpeded eyepath towards the player), the player is rendered insane by the monster and loses the game.
// Objects: player(position, sanity, hasAmulet), monster(position, bearing), room(dimensions)
// Functions: monsterMoves, checkPlayerMove, moveSouth
///////////////////////////////////////////////////////////////////
// Pseudocode
//input - series of instructions on how the player should move based on the position of the monster.

//GAME ACTION
// Player makes a move
// Player's move is checked for accuracy/sanity
// player's move is checked to see if it has reached the amulet's position
// Monster makes a putative move that is checked for accuracy
// monster moves in some way
// player is told of monster's movement
// Game checks IF monster's move has driven player insane
// game tells player where the monster is in relation to her
// game returns next move to the player

// PLAYER'S ACTIONS
// Player is given where the monster is in relation to her
// player is given the monster's bearing
// Player decides whether to move north, south, east or west
// game calculates putative future position
//    game checks IF player's future position runs into any walls.
//        IF yes - run error, ask player to move again
//    game checks IF player's move moves it into the direct eyepath of the monster
//        IF yes - player loses game
//    game checks IF player's move leads it to the amulet
//       IF yes - player wins game
//   IF no hazards
//      player's position is altered to that of the putative position


//MONSTER'S ACTIONS
// begins the game at a random x and y position, facing a random direction(ie bearing)
// WHEN it's the monster's time to move/turn
// Randomly decides whether to turn or to move in an direction
// IF TURN
//     monster randomly decides whether to move left or right.
//     monster's bearing is updated to reflect it's turn
// IF MOVE
//    calculate putative position monster will be in if it makes the move in the direction of it's bearing
//    IF move is possible (i.e. doesn't run into walls)
//        change monster coordinates to that of putative movements
//    IF move is impossible
//        monster makes another random move

//output - decision on whether the player has collected the amulet and avoided the monster
// Finally, you reach a heavy iron door. You pull it open. You find yourself looking out from the corner of a large, dimly lit room. The four walls are marked N, S, E, and W. On the floor is a gleaming grid pattern. Floating above one grid square is a pulsating, roughly spherical, purple-red mass. It's edges are indistinct, it seems to grow bigger and smaller by turns the longer you look at it. You are vaguely aware of tentacles. YOu consult your scroll
//Of it's face, I cannot speak. The face of the monster can only be seen from directly in front of it.

//"You hear a sound, and turn. You can see It, and you realize that It sees you. Terror grips your person. For a moment, you see something like an upside-down umbrella made of eyes, with a giant,gaping maw. Then, where It was hovering, there is only a child, small and scared looking. You rush forward to take its hand. Immediately your hand explodes in pain, while you hear a laughter that echoes in the space. The walls shift outward, turn bright pink, and start to alternately ooze human entrails and belch black smoke. You look at the stump where your hand once was. First a dog's paw protrudes from the stump. Then a hairdryer nozzle. Then a slimy tentacle. And so on and so forth. You are suddenly aware of wisdoms so profound that you want to weep from their truth, and of horrible events so disgusting that you

///////////////////////////////////////////////////////////////////
// Initial Code


var player = {
  posX: 0,
  posY: 0,
  sanity: true,
  hasAmulet: false,
};

// probably don't need this
// var dungeon = {
//   northWall: 30,
//   southWall: 0,
//   eastWall: 30,
//   westWall: 0
// };

// move this around?
var cardinalDirections = {N: [0, 1], S: [0, -1], E: [1, 0], W: [-1, 0]};

var monster = {
  posX: (Math.floor(Math.random()*30)),
  posY: (Math.floor(Math.random()*30)),
  bearing: (cardinalDirections[Math.floor(Math.random()*4)])
};

// declare putative X and Y positions for error checking?


//////////////////////
//FUNCTIONS

// two big functions, called playerMoves and monster moves?
// would nest the player moves forward functions in each

// does it see you and do you win are other functions


function doesItSeeYou(playerX, playerY, monsterX, monsterY) {
  if (playerX === monsterX) {
    return true;
  } else if (playerY === monsterY){
    return true;
  } else {
    return false;
  }
};

// function monsterTurns(monsterX, monsterY, bearing) {
//   var cardinalDirections = [W, N, E, S, W];
//   var indexDirection = cardinalDirections.indexOf(monster.bearing)
//     }
// };

function isMoveValid(){};

function monsterRules(){

  function monsterMoves(monsterX, monsterY, bearing) {
  var putativeX = monsterX;
  var putativeY = monsterX;
  // when to check that a player's move is valid?
  if (bearing == "N") {
    putativeY += 1;
  }
  else if (bearing == "S") {
    putativeY -= 1;
  }
  else if (bearing == "E") {
    putativeX += 1;
  }
  else{
    putativeX -= 1;
  }
  if (putativeX > 30 || putativeY > 30) {
    playerMoves = true;
  } else {
    monsterX = putativeX;
    monsterX = putativeY;
    return monster
};

// when the player isn't moving, the monster is
if (playerMoves === false) {
  var nextTurn = null
  // monster turns if the randomized number is less than 0.5
  if ((Math.random()) > 0.5) {
    // decides if monster is turning left or right
    if ((Math.random()) < 0.5) {
      nextTurn == "L"
      // Based on bearing, where is it going?
    } else {
      nextTurn == "R"
      // Based on bearing, where is it going?
    }
    // monster moves forward if the randomized number is less than 0.5
  } else {
    monsterMoves(monsterX, monsterY, bearing);
  }
  return monster
}

function playerFunctions() {
  if (sanity && playerMoves){
  var playerMove = prompt("In which cardinal would you like to move?");
  var putativeX = playerX;
  var putativeY = playerY;
  // when to check that a player's move is valid?
  if ("N" in playerMove) {
    putativeY += 1
  }
  else if ("S" in playerMove) {
    putativeY -= 1
  }
  else if ("E" in playerMove) {
    putativeX += 1
  }
  else if ("W" in playerMove) {
    putativeX -= 1
  }
  else {
    console.log("Error.")
  }
  if (putativeX > 30 || putativeY > 30) {
    console.log("Invalid move. There's a wall to your " + playerMove);
  } else {
    playerX = putativeX;
    playerY = putativeY;
  }
  if (doesItSeeYou) {
    sanity = false
  }
  // can I get it to output whether it's one direction in either way
  console.log("Itte is now " + (monsterX - playerX) + "places East or West from you and " (monsterY - playerY) + "places North or South from you.");
  console.log("You are now "+ (30 - playerX) + "places East or West from the amulet and " + (30 - playerY)+ "places north or South from the amulet.")
  playerMoves = false;
};


//////////

if (sanity === false) {
  console.log("Itte just saw you! Lol you lose")
};

if (hasAmulet=== true){
  console.log("You have the amulet and you made it out! Congrats")
};

function playGame(){

  var playerMoves = true;
};



////////////////////////////
//SANDBOX FOR CODE I'M TESTING


////////////////////////////


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//