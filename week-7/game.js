/*

  SOLO CHALLENGE 7.7 : DESIGN A BASIC GAME

  *** THIS IS A SOLO CHALLENGE ***

###################################################################

  YOUR MISSION DESCRIPTION: Tic-Tac-Toe

           OVERALL MISSION: Get three Xs in a row

                     GOALS: Block computer from getting 3 Os in a row
                            Get 3 Xs in a row

                CHARACTERS: Player X (the user)
                            Player O (the computer)

                   OBJECTS: 3 x 3 Board (2 dimensional array)
                            Player X (character object)
                            Player O (character object)

                 FUNCTIONS: Player X move
                            Player Y move

###################################################################

  PSEUDOCODE

   INPUT: User picks number from one to nine representing position on a three by three board
  OUTPUT: Display "Computer will make the first move."
          IF three "X"'s or "O"'s in a row (horizontal, vertical, or diagonal)
            Display "The winner of this round is (winner)."
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

6. Create a function (showisplay results on screen





*/
// #################################################################
// INITIAL SOLUTION

var game = {
  board: [[1,2,3],[4,5,6],[7,8,9]],
  open: [1,2,3,4,5,6,7,8,9]
}

var player = {
  win: "",
  state: "X"
}

function play_game(board, select, state) {
  if (state === "CHANGE TO X FOR PLAYER INPUT") select = select;
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

function mark(board, select, state) {        // make this board.mark
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

// FLIP THE ARRAY AND CHECK COLUMNS AS ROWS
  var flipped = board[0].map(function(col, index) {
    return board.map(function(row) {
      return row[index]
    })
  });

  for(var row = 0; row < 3; row++) {
      if (flipped[row].toString().split(",").join(" ") === "O O O") player.win = "O";
      if (flipped[row].toString().split(",").join(" ") === "X X X") player.win = "X";
  }

// CHECK FOR DIAGONAL WINS
  if (board[1][1] === "X") {
    if (board[0][0] === "X" && board[2][2] === "X") player.win = "X";
    if (board[0][2] === "X" && board[2][0] === "X") player.win = "X";
  }

  if (board[1][1] === "O") {
    if (board[0][0] === "O" && board[2][2] === "O") player.win = "O";
    if (board[0][2] === "O" && board[2][0] === "O") player.win = "O";
  }

// IF THERE'S A WINNER, REPORT IT AND END THE GAME
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


// #################################################################
// REFACTORED SOLUTION




// #################################################################
/* REFLECTION

  1. What was the most difficult part of this challenge?


  2. What did you learn about creating objects and functions that interact with one another?


  3. Did you learn about any new built-in methods you could use in your refactored solution?
     If so, what were they and how do they work?


  4. How can you access and manipulate properties of objects?


*/