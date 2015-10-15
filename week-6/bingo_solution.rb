=begin

A NESTED ARRAY TO MODEL A BINGO BOARD - SOLO CHALLENGE

I WORKED ON THIS CHALLENGE: Lars Johnson
I SPENT HOURS ON THIS CHALLENGE: ____

____________________________________________________________________________
RELEASE 1: PSEUDOCODE

OUTLINE:

1. CREATE A METHOD TO GENERATE A LETTER ( b, i, n, g, o) AND A NUMBER (1-100)

   INPUT: Nothing
  OUTPUT: A random letter from set (b, i, n, g, o) and random number between 1-100

  Create a new method (named callout)
    Create random number 0-4 and assign to variable (called_column)
    Assign variable (called_letter) to a letter at index (called_column) in string "bingo"
    Assign variable (called_number) to a random number between 1 and 100
    return called_column and called_number to method (named checker)


2. CHECK THE CALLED COLUMN FOR THE NUMBER CALLED

  INPUT: The variables called_column and called_number
  OUTPUT: A boolean value of true or false

  Create a new method (named checker)
    Iterate over @bingo_board array at rows [0 to 4] in column [called_column]
     IF current element equals called_number
      Return true with element's row (row_found) and (called_column) to method (mark_it)
     ELSE return to method (callout)


3. IF THE NUMBER IS IN THE COLUMN, REPLACE WITH AN "x"

   INPUT: The variables (row_found) and (called_column)
  OUTPUT: The @bingo_board array with the string "x" at (row_found) in (called_column)

  Create a new method (named mark_it)
    Replace original @bingo_board array value at (row_found)(column_called) with string "x"
    return to method (callout)

4. DISPLAY A COLUMN TO THE CONSOLE

   INPUT: A random letter from the set (b, i, n, g, o)
  OUTPUT: A column of @bingo_board's values from at (this_column)

  Create a new method (display_column)
    Assign index of (column_letter) in string "bingo" to (this_column)
    return to method (callout)


# Display the board to the console (prettily)
  #fill in the outline here

___________________________________________________________________________
RELEASE 2: INITIAL SOLUTION

=end

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end


end

# ___________________________________________________________________________
# RELEASE 3: DRIVER CODE (I.E. METHOD CALLS)

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


# ___________________________________________________________________________
# RELEASE 4: REFACTORED SOLUTION






# ___________________________________________________________________________
# RELEASE 5: TRUE BINGO BOARD (Optional)






=begin
____________________________________________________________________________
REFLECTIONS

1. How difficult was pseudocoding this challenge? What do you think of your pseudo style?

2. What are the benefits of using a class for this challenge?

3. How can you access coordinates in a nested array?

4. What methods did you use to access and modify the array?

5. How did you determine what should be an instance variable versus a local variable?

6. What do you feel is most improved in your refactored solution?

=end