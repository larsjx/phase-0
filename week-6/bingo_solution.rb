=begin

A NESTED ARRAY TO MODEL A BINGO BOARD - SOLO CHALLENGE

I WORKED ON THIS CHALLENGE: Lars Johnson
I SPENT HOURS ON THIS CHALLENGE: __7__

____________________________________________________________________________
RELEASE 1: PSEUDOCODE

OUTLINE:

0. CREATE A NEW CLASS - BingoBoard

  INPUT: A nested array (board) with 5 subarrays of 5 elements each
  OUTPUT: See the methods (1), (3), (4), (5) and (6) below

  Create a new class called BingoBoard
    Initialize class with array (board) that has been received as an argument


1. CREATE A METHOD TO GENERATE A LETTER (B, I, N, G, O) AND A NUMBER (1-100)

   INPUT: A method call with no arguments
  OUTPUT: Return a random letter from set (B, I, N, G, O) and a random number
           between 1-100 (OR XX and XX FOR TRUE BINGO BOARD REFACTORING)

  Create a new instance method (named call)
    Create random number 0-4 and assign to variable (called_column)
    Assign variable (called_letter) to a letter at index (called_column)
     in string "BINGO"
    Assign variable (called_number) to a random number between 1 and 100
      OR FOR TRUE BINGO REFACTORING
      -----------------------------
      Assign variable (called_number between 0-15, 16-30, 31-60 or 61-75
        depending on (called_column)

2. CHECK THE CALLED COLUMN FOR THE NUMBER CALLED
3. IF THE NUMBER IS IN THE COLUMN, REPLACE WITH AN "x"

  INPUT: The instance variables (called_column) and (called_number)
  OUTPUT: Return either nothing or the element "X" to @BingoBoard array value
          at (row_found)(column_called)

  Create a new instance method (named check)
    Iterate over @BingoBoard array at rows [0 to 4] in column [called_column]
     IF current element equals called_number
      Replace original @BingoBoard array value at (row_found)(column_called)
      with string "X"

4. DISPLAY A COLUMN TO THE CONSOLE

   INPUT: The instance variable (called column)
  OUTPUT: Display @BingoBoard array elements from (called_column)

  Create a new instance method (display_column)
    Display underlined letter from string "BINGO" at (called_column)
    Iterate over all rows of @BingoBoard array and display elements from
     (called_column) underneath the letter just displayed

5. DISPLAY THE BOARD TO THE CONSOLE (PRETTILY)

   INPUT: The instance variable @BingoBoard array
  OUTPUT: Display the entire @BingoBoard array, one sub-array per line

  Create a new instance method (display_board)
    Display underlined letters "B", "I", "N", "G" and "O"
    Display each sub-array of the @BingoBoard array on it's own line

6. GENERATE A TRUE BINGO BOARD (NESTED ARRAY)

    INPUT: A method call with no arguments
   OUTPUT: Overwrite the elements in nested array @BingoBoard with new values

  Create a new nested array of random numbers
    Generate 5 random numbers between 0 and 15 and place into an array
    Generate 5 random numbers between 16 and 30 and place into an array
    Generate 5 random numbers between 31 and 45 and place into an array
    Generate 5 random numbers between 46 and 60 and place into an array
    Generate 5 random numbers between 61 and 75 and place into an array
  Replace center value with "00"
  Precede any single digits with "0" for nicer display
  Push 5 new arrays into new array (new_board)
  Change rows into columns
  Assign new array to @bingo_board

  ______________________________
  >>> ADD FUTURE UI METHOD HERE
  ------------------------------

___________________________________________________________________________
RELEASE 2: INITIAL SOLUTION


class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @called_column = rand(5)
    @called_letter = "BINGO"[@called_column]
    @called_number = rand(100)+1
    p @called_letter, @called_number
  end

  def check
    for @row in 0..4
      if @bingo_board[@row][@called_column] == @called_number
         @bingo_board[@row][@called_column] = "X"
      end
    end
  end

  def display_column
      puts "       #{"BINGO"[@called_column]}"
      puts "       ==="
    for @i in 0..4
      puts "       #{@bingo_board[@i][@called_column]}"
    end
    puts
  end

  def display_board
    puts "        B   I   N  G   O"
    puts "      ==================="
    @bingo_board.each { |element| puts "       " + element.join("  ").to_s }
    puts
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
new_game.call
new_game.check
new_game.display_column
new_game.display_board

# ___________________________________________________________________________
# RELEASE 4: REFACTORED "TRUE BINGO" SOLUTION
#
# Please note: This refactored solution contains additional functionality
=end

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @called_column = rand(5)
    @called_number = (1+(15*@called_column)..15*(@called_column+1)).to_a.sample
    puts
    puts "      CALLING #{"BINGO"[@called_column]}-#{@called_number}"
    puts
  end

  def check
    for row in 0..4
      if @bingo_board[row][@called_column] == @called_number
         @bingo_board[row][@called_column] = "XX"
      end
    end
  end

  def display_column
    puts "       #{"BINGO"[@called_column]}"
    puts "       ==="
    bingo_col = @bingo_board.transpose
    bingo_col[@called_column].each {|element|
      if element == "XX"
        puts "       #{element}   <=="
      else
        puts "       #{element}"
      end
    }
    puts
  end

  def display_board
    puts "        B   I   N  G   O"
    puts "      ==================="
    @bingo_board.each { |element| puts "       " + element.join("  ").to_s }
    puts
  end

  ##### RELEASE 5: TRUE BINGO BOARD GENERATOR #####

  def true_bingo
    @true_board = Array.new
    for i in 0..4
      @true_board << (1+(15*i)..15*(i+1)).to_a.sample(5)
    end
    @true_board[2][2] = "0"
    @true_board.each_index { |row|
      @true_board[row].each_index {|col|
      if @true_board[row][col].to_s.length == 1
      @true_board[row][col] = "0" + @true_board[row][col].to_s
      end
      }
    }
    @true_board = @true_board.transpose
    @bingo_board = @true_board
  end
end

# ___________________________________________________________________________
# RELEASE 5: TRUE BINGO BOARD DRIVER CODE (Optional)


model = [[1, 16, 31, 46, 61],
        [11, 22, 38, 50, 64],
        [8, 28, "@", 55, 71],
        [13, 19, 35, 48, 66],
        [15, 30, 45, 60, 75]]


new_game = BingoBoard.new(model)
new_game.true_bingo
new_game.call
new_game.check
new_game.display_column
new_game.display_board

=begin
____________________________________________________________________________
SCREEN CAPTURE OF SAMPLE RUN


     CALLING I-16

       I
       ===
       XX   <==
       29
       28
       20
       18

        B   I   N  G   O
      ===================
       10  XX  32  47  61
       11  29  38  53  73
       07  28  00  49  62
       05  20  45  58  75
       09  18  31  57  68

____________________________________________________________________________
REFLECTIONS

1. How difficult was pseudocoding this challenge?

  Pseudocoding is getting easier and easier for me, so on this challenge it
  was not too difficult.

2. What do you think of your pseudocoding style?

    I think my pseudocoding style has improved over time and it's still improving.
    In general, I like my pseudocoding style.

3. What are the benefits of using a class for this challenge?

    Being able to use instance variables versus having to pass variables from
    method to method is a huge benefit.

4. How can you access coordinates in a nested array?

    You can access coordinates in a nested array by providing the index of the
    row and column you are trying to access ( e.g., array[row][column] ).

5. What methods did you use to access and modify the array?

    I used the methods #transpose, #each_index, and #each to access and modify
    the array.

6. How did you determine what should be an instance variable versus a local variable?

    Whenever I want a variable to be accessible to other methods outside of the
    one in which it was created I use an instance variable (like @called_column).

7. What do you feel is most improved in your refactored solution?

    The biggest improvement in my refactored solution is the use of #transpose
    in the display_column method, because it allowed me to eliminate a for loop.

    Apart from that, my refactored solution is actually a bit longer than my
    initial solution because I included:

        a) OPTIONAL code for creating and calling numbers for a TRUE BINGO BOARD
        b) A few lines in display_column to display "XX <== if" the called number
           is present in the column.

=end