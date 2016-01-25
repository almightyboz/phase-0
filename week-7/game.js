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
////////////////////////////////////////////////////////////////////////////////////////////////
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
// Finally, you reach a heavy iron door. You pull it open. You find yourself looking out from the corner of a large, dimly lit room. The four walls are marked N, S, E, and W. On the floor is a gleaming grid pattern. Floating above one grid square is a pulsating, roughly spherical, purple-red mass. It's edges are indistinct, it seems to grow bigger and smaller by turns the longer you look at it. You are vaguely aware of tentacles. You consult your scroll
//The beast lurches. It may turn, and you will walk, it may move, and you will walk. Of it's face, I cannot speak. It's face is shrouded, it is aThose whom itte beholds have all turned mad,

//"You hear a sound, and turn. You can see It, and you realize that It sees you. Terror grips your person. For a moment, you see something like an upside-down umbrella made of eyes, with a giant,gaping maw. Then, where It was hovering, there is only a child, small and scared looking. You rush forward to take its hand. Immediately your hand explodes in pain, while you hear a laughter that echoes in the space. The walls shift outward, turn bright pink, and start to alternately ooze human entrails and belch black smoke. You look at the stump where your hand once was. First a dog's paw protrudes from the stump. Then a hairdryer nozzle. Then a slimy tentacle. And so on and so forth. You are suddenly aware of wisdoms so profound that you want to weep from their truth, and of horrible events so disgusting that you"

////////////////////////////////////////////////////////////////////////////////////////////////
// Initial Code



var cardinalDirections = ["N", "E", "S", "W"];

var player = {
  sanity: true,
  wonGame: false
};

var playerX = 0;
var playerY = 0;

var monsterX = Math.floor(Math.random()*10);
var monsterY = (Math.floor(Math.random()*10));
var bearing = cardinalDirections[Math.floor(Math.random()*4)];

function playGame() {

  function playerGoes(playerX, playerY) {
      // prompts player for a cardinal direction to move in
      var playerMove = prompt("In which cardinal direction would you like to move?");
      if (playerMove.includes("N")) {
          playerY += 1;
      } else if (playerMove.includes("S")) {
          playerY -= 1;
      } else if (playerMove.includes("E")) {
          playerX += 1;
      } else if (playerMove.includes("W")) {
          playerX -= 1;
      } else {
          console.log("Error. I'm an MVP project, and I'm gonna shut down for that.");
      }
      return [playerX, playerY];
  }

  function monsterGoes(monsterX, monsterY, bearing) {
      // takes monster position and bearing
      //random turn or move forward
      var whichOne = (Math.random() * 100)
          // monster turns
          //calculate turn based on bearing
          // output X and Y and bearing
        //monster turns
      if (whichOne < 50) {
          var position = cardinalDirections.indexOf(bearing);
          if (whichOne < 25) {
            position = ((position + 1)%4);
          } else {
            position = (position - 1)%4;
          }
          bearing = cardinalDirections[position];
      } else {
          if (bearing === "N") {
              monsterY += 1;
          } else if (bearing === "S") {
              monsterY -= 1;
          } else if (bearing === "E") {
              monsterX += 1;
          } else {
              monsterX -= 1;
          }
        }
    return [monsterX, monsterY, bearing];
  }


  // //DETERMINE WHICH DIRECTION I AM FROM MONSTER?
  // function printCoordinates(playerX, playerY, monsterX, monsterY) {
  //     // takes player and monster coordinates
  //     // determines how far the player is from the monster
  //     // determine how far the player is from the amulet
  //     // print results to console
  //     // print how far the player is from the monster
  //     console.log(["Itte is now", (monsterX - playerX), "places East or West from you and", (monsterY - playerY), "places North or South from you."].join(" "));
  //     // print how far the player is from the amulet
  //     console.log("You are now " + (30 - playerX) + " places West from the amulet and " + (30 - playerY) + " places South of the amulet.");
  // }

  function monsterSeesYou(playerX, playerY, monsterX, monsterY, bearing) {
      // takes all things, returns boolean
      if (playerX === monsterX) {
          if (playerY > monsterY && bearing === "N") {
              return true;
          } else if (playerY < monsterY && bearing === "S") {
              return true;
          } else {
              return false;
          }
      } else if (playerY === monsterY) {
          if (playerX > monsterX && bearing === "E") {
              return true;
          } else if (playerX < monsterX && bearing === "W") {
              return true;
          } else {
              return false;
          }
      } else {
          return false;
      }
  }

  while (player.sanity === true && player.wonGame === false) {
      // player takes a turn
      var playerArray = playerGoes(playerX, playerY);
      //alert(playerArray)
      // monster takes a turn
      playerX = playerArray[0];
      playerY = playerArray[1];
      var monsterArray = monsterGoes(monsterX, monsterY, bearing);
      //alert(monsterArray)
      monsterX = monsterArray[0];
      monsterY = monsterArray[1];
      bearing = monsterArray[2];
      alert(["You are standing on tile", playerX, playerY, ". The monster is on tile", monsterX, monsterY, "facing the wall marked", bearing,"."].join(" "));
      // check if player has won game
      if (playerX === 10 && playerY === 10) {
          player.wonGame = true;
          break;
      }
      // check if the monster sees the player
      if (monsterSeesYou(playerX, playerY, monsterX, monsterY, bearing)) {
          player.sanity = false;
          break;
      } else {
          continue;
      }
  }

  if (player.sanity === false) {
    console.log("lol you lose");
  };

  if (player.wonGame === true) {
    console.log("You win! great job.");
  };

}
}

playGame();



///////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Refactored Code


var cardinalDirections = ["N", "E", "S", "W"];

var player = {
  sanity: true,
  wonGame: false,
  posX: 0,
  posY: 0
};

player.distance_to_monster = function(monsterX, monsterY) {
  return (monsterX - this.posX) + " " + (monsterY - this.posY);
};

var monster = {
    posX:  Math.floor(Math.random()*10),
    posY: Math.floor(Math.random()*10),
    bearing:  cardinalDirections[Math.floor(Math.random()*4)]
};

function nextMove(x, y, bearing) {
  this.xPos = x;
  this.yPos = y;
  this.bearing = bearing;

}

function playGame() {

    alert("Make it to square 10, 10, without it seeing you!\nCapital letters only, please.")

  function playerGoes(playerX, playerY) {
      var playerMove = prompt("In which cardinal direction would you like to move?");
      if (playerMove.includes("N")) {
          playerY += 1;
      } else if (playerMove.includes("S")) {
          playerY -= 1;
      } else if (playerMove.includes("E")) {
          playerX += 1;
      } else {
          playerX -= 1;
      }
      return [playerX, playerY];
  }

  function monsterGoes(monsterX, monsterY, bearing) {
      var whichOne = (Math.random() * 100)
      if (whichOne < 50) {
          var position = cardinalDirections.indexOf(bearing);
          if (whichOne < 25) {
            position = ((position + 1)%4);
          } else {
            position = (position - 1)%4;
          }
          bearing = cardinalDirections[position];
      } else {
          if (bearing === "N") {
              monsterY += 1;
          } else if (bearing === "S") {
              monsterY -= 1;
          } else if (bearing === "E") {
              monsterX += 1;
          } else {
              monsterX -= 1;
          }
        }
    return [monsterX, monsterY, bearing];
  }

  function monsterSeesYou(playerX, playerY, monsterX, monsterY, bearing) {
      if (playerX === monsterX) {
          if ((playerY > monsterY && bearing === "N") || (playerY < monsterY && bearing === "S")) {
              return true;
          } else {
              return false;
          }
      } else if (playerY === monsterY) {
          if ((playerX > monsterX && bearing === "E") || (playerX < monsterX && bearing === "W")){
              return true;
          } else {
              return false;
          }
      } else {
          return false;
      }
  }

  while (player.sanity === true && player.wonGame === false) {
      var playerArray = playerGoes(player.posX, player.posY);
      player.posX = playerArray[0];
      player.posY = playerArray[1];
      var monsterArray = monsterGoes(monster.posX, monster.posY, monster.bearing);
      monster.posX = monsterArray[0];
      monster.posY = monsterArray[1];
      monster.bearing = monsterArray[2];
      alert(["You are standing on a tile marked", player.posX, player.posY, ". The monster is on another tile marked", monster.posX, monster.posY, ". It faces the wall marked", monster.bearing].join(" "));
      if (player.posX === 10 && player.posY === 10) {
          player.wonGame = true;
          break;
      }
      if (monsterSeesYou(player.posX, player.posY, monster.posX, monster.posY, monster.bearing)) {
          player.sanity = false;
          break;
      } else {
          continue;
      }
  }

  if (player.sanity === false) {
    console.log("The monster faces you, as a black fog decends to obscure all other things in the dungeon. A single giant eye glares into your very person, as a  scream dies in your dry throat. It's tentacles reach lovingly for your face. Madness descends upon you.\n\nLol, you lose.");
  }

  if (player.wonGame === true) {
    console.log("Hey, is that the amulet? Wait, you just won! Good job!");
  }

}

playGame();

\

///////////////////////////////////////////////////////////////////////////////////////////////////////////
// Reflection
//
//
//
//
//
//
//
//