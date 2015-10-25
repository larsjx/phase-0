/*

  SOLO CHALLENGE 7.7 : DESIGN A BASIC GAME

  *** THIS IS A SOLO CHALLENGE ***

###################################################################

  YOUR MISSION DESCRIPTION: Tic-Tac-Toe

           OVERALL MISSION: Get three Os in a row

                     GOALS: Block computer from getting three Xs in a row
                            Get three Os in a row (horizontal, vertical or diaganol)

                CHARACTERS: Player X (the computer goes first)
                            Player O (the user)

                   OBJECTS: Three by three board (two dimensional array with nine slots)
                            Player X (computer player object)
                            Player O (user player object)

                 FUNCTIONS: Player X move
                            Player O move
                            Check for and report win

###################################################################

  PSEUDOCODE

   INPUT: User picks number from one to nine representing position on a three by three board
  OUTPUT: Display "Computer will make the first move."
          IF three "X"'s or "O"'s in a row (horizontal, vertical, or diagonal)
            Display "The winner of this round is (winner)."
          IF all slots are filled in
            Display "This game is a Tie!"
          Display board with "X"'s and "O"'s
          Display "Please select an empty board position from 1 to 9:"

1. Create a new three by three array object (called board)
    Create a property called (grid) and populate with an empty two dimensional array
     of nine elements (three rows by three columns)
      Initially populate each element in sequence with the integers one through nine (1-9)
    Create a property called (history) and populate with a new empty array

2. Create a new object (called players)
    Create a property called (winner) and populate with a new empty string
    Create a child-object called (pOne)
      Create a property called (wins)
    Create a child-object called (pTwo)
      Create a property called (wins)

3. Create a function (playerOneMove)
    pOne takes the first move:
    Randomly select a number from zero to two and call it (p1Row)
    Randomly select a second number from zero to two and call it (p1Col)
    IF the (board) array element at index (p1Row)(p1Col) is an integer
      Populate the (board) array element at index(p1Row)(p1Col) with string "X"
      Push the integer into (players.history)

  << I streamlined the logic in #3 by keeping a list of the remaining open positions
     and chosing the random number from that vs. choosing then checking availability >>

4. Create a function (winnerYet)
    Determine if there is a winner
      IF any row or column contains all "X"s, set (players.winner) to "Player 1"
      IF either diagonal contains all "X"s, set (players.winner) to "Player 1"
      IF any row or column contains all "O"s, set (players.winner) to "Player 2"
      IF either diagonal contains all "O"s, ser (players.winner) to "Player 2"

5. Create a function (showBoard)
    IF (players.winner) does not equal ""
      Display "The winner of this round is (players.winner)."
      Reset the value of (players.winner) to ""
    Display the (board) array on screen

6. Create a function (playerTwoMove)
    Request the user's move:
      Ask for input of an integer from one to nine, representing the nine "slots" on (board)
        IF user's input is not an integer between one and nine, ask again
        ELSE convert user's input to (userRow) and (userCol)
          IF the array element selected by user is not empty, ask again
          ELSE assign "X" to the array element selected by the user

  << I ended up defaulting to NODE DEMO MODE in which the computer plays against itself.
     For this, I use the same streamlined logic as #3 above, choose random number from list.
     To play in PLAYER VS COMPUTER MODE, change the string value on line 108 or 195 to "X"
     In PLAYER VS. COMPUTER MODE, I accept the players number via Prompt in Chrome Console. >>

*/
// ######################################################################################
// INITIAL TIC-TAC-TOE SOLUTION
//
// THIS GAME IS CURRENTLY IN NODE DEMO MODE: COMPUTER vs. COMPUTER
// TO PLAY USER vs. COMPUTER IN CHROME CONSOLE, CHANGE THE VALUE ON LINE 108 TO "X"

var game = {
  board: [[1,2,3],[4,5,6],[7,8,9]],
  open: [1,2,3,4,5,6,7,8,9]
}

var player = {
  win: "",
  state: "X"
}

function play_game(board, select, state) {
  if (state === "### CHANGE THIS TO X FOR 1 PLAYER IN CHROME CONSOLE ###") select = select;
  else select = game.open[Math.floor(Math.random() * game.open.length)];
  if (select === undefined) {
    console.log("\n       This game was a Tie!\n");
    return;
  }
  else {
    console.log()
    console.log("       " + state + " picks " + select);
  }
  mark(board, select, state)
}

function mark(board, select, state) {
  for(var row = 0; row < 3; row++) {
      for(var col = 0; col < 3; col++) {
        if (board[row][col] === select) {
          board[row][col] = state;
        }
      }
  }
  for(var remove = 0; remove < 9; remove++) {
    if(game.open[remove] === select) {
       game.open.splice(remove, 1);
    }
  }
  console.log("       =====");
  board.forEach(function(value) { console.log("       " + value.toString().split(",").join(" ")) })
  if (state === "X") state = "O";
  else state = "X";
  check(board, select, state)
}

function check(board, select, state) {
  for(var row = 0; row < 3; row++) {
      if (board[row].toString().split(",").join(" ") === "O O O") player.win = "O";
      if (board[row].toString().split(",").join(" ") === "X X X") player.win = "X";
  }

  var flipped = board[0].map(function(col, index) {
    return board.map(function(row) {
      return row[index]
    })
  });

  for(var row = 0; row < 3; row++) {
      if (flipped[row].toString().split(",").join(" ") === "O O O") player.win = "O";
      if (flipped[row].toString().split(",").join(" ") === "X X X") player.win = "X";
  }

  if (board[1][1] === "X") {
    if (board[0][0] === "X" && board[2][2] === "X") player.win = "X";
    if (board[0][2] === "X" && board[2][0] === "X") player.win = "X";
  }

  if (board[1][1] === "O") {
    if (board[0][0] === "O" && board[2][2] === "O") player.win = "O";
    if (board[0][2] === "O" && board[2][0] === "O") player.win = "O";
  }

  if (player.win === "X" || player.win === "O") {
      console.log();
      console.log("       " + player.win + " is the winner!");
      console.log("       =====");
      board.forEach(function(value) { console.log("       " + value.toString().split(",").join(" ")) })
      console.log()
      return
  }
  play_game(board, select, state)
}


play_game(game.board, 0, "X")


// ######################################################################################
// REFACTORED TIC-TAC-TOE SOLUTION
//
// FOR EASY TESTING IN NODE, THIS GAME IS CURRENTLY IN DEMO MODE: COMPUTER PLAYS COMPUTER
// FOR USER TO PLAY COMPUTER IN THE CHROME CONSOLE, CHANGE THE VALUE ON LINE 195 TO "X"

var player = {
  win: "",
  state: "X",
  selection: 0,

  makeSelection: function(board, selection, state) {     // PLAYER CHOOSES AN OPEN SPOT FROM 1 TO 9
    if (player.state === "### CHANGE THIS TO X FOR 1 PLAYER IN CHROME CONSOLE ###") {
      selection = Number(prompt("Select an open spot between 1 and 9", game.openSpots));
    }
    else selection = game.openSpots[Math.floor(Math.random() * game.openSpots.length)];
    player.takeTurn(board, selection, state);
  },

  takeTurn: function(board, selection, state) {          // CHECK IF GAME IS A DRAW
    if (selection === undefined) {
      console.log("\n       This game is a Draw!\n");
      return;
    }
    else {
      console.log()                                      // IF NO DRAW, DISPLAY THE PLAYER'S SELECTION
      console.log("       " + player.state + " picks " + selection);
    }
    player.markSelection(board, selection, state)
  },

  markSelection: function(board, selection, state) {
    for(var row = 0; row < 3; row++) {
      for(var col = 0; col < 3; col++) {
        if (board[row][col] === selection) {
          board[row][col] = player.state;                // CHANGE SELECTION TO AN "X" OR "O" (STATE)
        }
      }
    }
    for(var remove = 0; remove < 9; remove++) {          // REMOVE JUST PLAYED FROM LIST OF OPEN SPOTS
      if(game.openSpots[remove] === selection) {
         game.openSpots.splice(remove, 1);
      }
    }
    console.log("       =====");                         // DISPLAY THE CURRENT GAMEBOARD
    board.forEach(function(value) { console.log("       " + value.join(" ")) })
    if (player.state === "X") player.state = "O";        // SWITCH PLAYERS AND GOTO CHECK FOR WINNER
    else player.state = "X";
      game.checkForWinner(board, selection, state)
    }
}

var game = {
  board: [[1,2,3],[4,5,6],[7,8,9]],
  openSpots: [1,2,3,4,5,6,7,8,9],

  checkForWinner: function(board, selection, state) {
    var x = "X"
    var o = "O"                                          // CHECK FOR HORIZONTAL WINS
    for(var row = 0; row < 3; row++) {
      if (board[row].join(" ") === "O O O") player.win = o;
      if (board[row].join(" ") === "X X X") player.win = x;
    }

    var flipped = board[0].map(function(col, index) {    // FLIP BOARD TO CHECK FOR VERTICAL WINS
      return board.map(function(row) {
      return row[index]
      })
    });

    for(var row = 0; row < 3; row++) {
      if (flipped[row].join(" ") === "O O O") player.win = o;
      if (flipped[row].join(" ") === "X X X") player.win = x;
    }

    if (board[1][1] === x) {                             // CHECK FOR DIAGONAL WINS
      if (board[0][0] === x && board[2][2] === x) player.win = x;
      if (board[0][2] === x && board[2][0] === x) player.win = x;
    }

    if (board[1][1] === o) {
      if (board[0][0] === o && board[2][2] === o) player.win = o;
      if (board[0][2] === o && board[2][0] === o) player.win = o;
    }

    if (player.win === x || player.win === o) {          // REPORT THE WINNER AND END THE GAME
      console.log();
      console.log("       " + player.win + " is the winner!");
      console.log("       =====");
      board.forEach(function(value) { console.log("       " + value.join(" ")) })
      console.log()
      return
    }
    player.makeSelection(board, selection, state)        // OR REPEAT GAMEPLAY WITH NEXT PLAYER
  }
}

player.makeSelection(game.board, player.selection, "X")  // START A NEW GAME

/*
#########################################################################################
   SCREEN CAPTURE OF SAMPLE RUN IN NODE DEMO MODE

       X picks 5
       =====
       1 2 3
       4 X 6
       7 8 9

       O picks 1
       =====
       O 2 3
       4 X 6
       7 8 9

       X picks 3
       =====
       O 2 X
       4 X 6
       7 8 9

       O picks 4
       =====
       O 2 X
       O X 6
       7 8 9

       X picks 7
       =====
       O 2 X
       O X 6
       X 8 9

       X is the winner!
       =====
       O 2 X
       O X 6
       X 8 9

#########################################################################################
   REFLECTION

  1. What was the most difficult part of this challenge?

    There were three difficult parts to this challenge. One was coming up with an efficient
    way of testing for the occurance of a win (3 across, 3 down, or diagonal) and I suspect
    there may be something math-based that I didn't think of. The second was coming up with
    the best structure of objects and functions and I think I did a pretty good job of that
    in my refactoring. The last, and perhaps toughest part was coming up with a very simple
    user interface that would accept the user's input without building a webpage. I decided
    to do this in Chrome's JavaScript Console, but I'm not thrilled with the result so I'm
    looking forward to a chance to build a web-based, interactive UI on top of this logic.

  2. What did you learn about creating objects and functions that interact with one another?

    I learned that it's important from a functionality and readability standpoint to have a
    good structure of objects (Player and Game) and their functions (make selection, mark
    selction, and check for winner). I am still hoping there may be a way to use something
    like instance variables accross the functions instead of passing variables as arguments,
    but I didn't come up with any ways to do that in my research.

  3. Did you learn about any new built-in methods you could use in your refactored solution?
     If so, what were they and how do they work?

     My refactored solution did more in terms of improving structure, flow and readability
     than reducing code using built-in methods because I didn't really find any new ones
     that looked more efficient than what I had found for my initial solution. I did however,
     realize that I was unnecessarily using #toString and #split before my use of #join which
     is redundant because join automatically creates a string and splits it.

  4. How can you access and manipulate properties of objects?

    Javascript object properties can be accessed via either dot or bracket notation. Most
    style guides say to use dot notation (e.g., player.win) whenever possible, because it's
    more concise and a bit easier to read than bracket notation (e.g., player["win"]).
    However, bracket notation lets you access properties with special characters such as
    spaces in them. It also lets you dynamically generate property names at runtime which
    could be a very handy feature, but it's something I chose not use in this challenge.

*/