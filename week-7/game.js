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