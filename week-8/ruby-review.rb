=begin
# CREATE A BINGO SCORER (SOLO CHALLENGE)
# I WORKED ON THIS: Lars Johnson

######################################################################################################
# PSEUDOCODE

  INPUT: One nested array with nine different five by five arrays (bingo boards) inside of it
 OUTPUT: Display "BOARD #(x) IS A WINNER!" (where x = the winning board number)
         Display the winning board (nicely formated)

 1. Create eight winning bingo boards plus one non-winning bingo board (call them board_1-9)
 2. Create one nested array with all nine bingo boards inside of it
 3. Create three methods inside the BingoScorer class
      1. Check board for XXs in winning configurations
          A) Compute these wins by looking for a straight line of five double Xs (XX)
              1. Check for HORIZONTAL wins
                    Iterate over each row in the nested array and look for sequence of 10 Xs
              2. Check for VERTICAL wins
                    Iterate over each col in the nested array and look for sequence of 10 Xs
              3. Check for DIAGONAL UP wins
                    Iterate by stepping 1 row/column at a time and look for sequence of 10 Xs
              4. Check for DIAGONAL DOWN wins
                    Iterate by stepping 1 row/column at a time and look for sequence of 10 Xs
          B) Compute special wins with nested IF statements after determining center position is XX
              1. Check for INSIDE CORNER wins
                    Use a second-level IF statement to determine if inside corner matches
              2. Check for OUTSIDE CORNER wins
                    Use a second-level IF statement to determine if outside corner matches
              3. Check for POSTAGE STAMP wins
                    Use a second-level IF statement to determine if postage stamp matches
              4. Check for SMALL DIAMOND wins
                    Use a second-level IF statement to determine if small diamond matches
      2. Confirm wins by displaying win notice and bingo board
      3. Select next board and restart (or Quit)
          Update the current board if any boards remain unchecked
          ELSE quit game

=end
######################################################################################################
# SAMPLE BOARDS

    board_1 = [[47, 44, 71, 28, 88],
              ['██', '██', '██', '██', '██'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],         # HORIZONTAL
              [75, 70, 54, 80, 83]]

    board_2 = [[47, 44, 37, '██', 88],
              [22, 69, 75, '██', 73],
              [83, 85, 97, '██', 57],       # VERTICAL
              [25, 31, 96, '██', 51],
              [75, 70, 54, '██', 83]]

    board_3 = [['██', 44, 71, 28, 88],
              [22, '██', 75, 65, 73],
              [83, 85, '██', 89, 57],       # DIAGONAL DOWN
              [25, 31, 96, '██', 51],
              [75, 70, 54, 18, '██']]

    board_4 = [[47, 44, 71, 38, '██'],
              [22, 69, 75, '██', 73],
              [83, 85, '██', 89, 57],       # DIAGONAL UP
              [25, '██', 96, 68, 51],
              ['██', 70, 54, 80, 83]]

    board_5 = [[47, 44, 71, 18, 24],
              [22, '██', 75, '██', 73],
              [83, 85, '██', 89, 57],       # INSIDE CORNERS
              [25, '██', 96, '██', 15],
              [39, 70, 54, 80, 83]]

    board_6 = [[47, 44, 71, 18, 24],
              [22, 67, '██', 34, 73],
              [48, '██', '██', '██', 27],   # SMALL DIAMOND
              [25, 12, '██', 10, 51],
              [39, 70, 54, 80, 83]]

    board_7 = [['██', 44, 71, 38, '██'],
              [22, 33, 75, 46, 53],
              [83, 85, '██', 89, 57],       # OUTSIDE CORNERS
              [25, 54, 96, 23, 75],
              ['██', 70, 54, 80, '██']]

    board_8 = [[47, 44, 71, 28, 66],
              [22, 69, 75, 23, 73],
              [83, 85, '██', 89, 57],       # POSTAGE STAMP
              ['██', '██', 96, 68, 51],
              ['██', '██', 54, 80, 83]]

    board_9 = [[47, '██', 37, 43, 88],
              [22, 69, 75, '██', 73],
              [83, 85, 97, '██', 57],       # NOT A WINNING BOARD
              [25, 31, '██', 14, 51],
              [75, 70, 54, '██', 83]]

boards = [board_1, board_2, board_3, board_4, board_5, board_6, board_7, board_8, board_9]

######################################################################################################
# INITIAL SOLUTION

# class BingoScorer

#   def initialize(boards)
#     @i = 0
#     @boards = boards
#     @board = @boards[@i]
#     @winner = "██████████".split()
#     @tally = []
#   end

#   def check_for_win(type)
#     if @tally.join("") == "██████████"
#       puts " BOARD ##{@i+1} IS A#{type} WINNER!"
#       display_board
#     end
#     @tally = []
#     @row = 4
#     return
#   end

#     def display_board
#       puts "\n        B   I   N  G   O"
#       puts "      ==================="
#       @board.each { |element| puts "       " + element.join("  ").to_s }
#       puts
#       return
#     end

#   def check_board
#     @board.each_index { |index| @tally << @board[index][index] }
#     check_for_win(" DIAGONAL DOWN")

#     for @col in 0..4
#       @tally << @board[@row][@col]
#         @row -= 1
#     end
#     check_for_win(" DIAGONAL UP")

#     @board.each { |row| @tally = row
#       check_for_win(" HORIZONTAL") }

#     @board.transpose.each { |row| @tally = row
#       check_for_win(" VERTICAL") }

#     if @board[2][2] == "██"
#       if @board[1][1] == "██" && @board[1][3] == "██" && @board[3][1] == "██" && @board[3][3] == "██"
#         @tally = @winner
#         check_for_win("N INSIDE CORNERS")
#       elsif @board[1][2] == "██" && @board[3][2] == "██" && @board[2][1] == "██" && @board[2][3] == "██"
#         @tally = @winner
#         check_for_win(" SMALL DIAMOND")
#       elsif @board[0][0] == "██" && @board[4][0] == "██" && @board[0][4] == "██" && @board[4][4] == "██"
#         @tally = @winner
#         check_for_win("N OUTSIDE CORNERS")
#       elsif @board[3][0] == "██" && @board[4][0] == "██" && @board[3][1] == "██" && @board[4][1] == "██"
#         @tally = @winner
#         check_for_win(" POSTAGE STAMP")
#       end
#     end

#     @i < @boards.length-1 ? @i +=1 : return # Check the next board or exit
#     @board = @boards[@i]
#     check_board

#   end #check_board


# end #class


######################################################################################################
# REFACTORED SOLUTION

# I WAS ABLE TO REFACTOR THE CHECK FOR A "DIAGONAL UP" WIN... COMPARE 134-138 with 210-212


class BingoScorer

  def initialize(boards)
    @i = 0
    @boards = boards
    @board = @boards[@i]
    @winner = "██████████".split()
    @tally = []
  end

  def check_for_win(type)
    if @tally.join("") == "██████████"
      puts " BINGO! - BOARD ##{@i+1} IS A#{type} WINNER!"
      display_board
    end
    @tally = []
    @row = 4
    return
  end

    def display_board
      puts "\n        B   I   N  G   O"
      puts "      ==================="
      @board.each { |element| puts "       " + element.join("  ").to_s }
      puts
      return
    end

  def check_board
    @board.each_index { |index| @tally << @board[index][index] }
    check_for_win(" DIAGONAL DOWN")

    @board.each_index {|index|
      index == 0 ? @tally << @board[0][4] : @tally << @board[-index][index-1] }
    check_for_win(" DIAGONAL UP")

    @board.each { |row| @tally = row
      check_for_win(" HORIZONTAL") }

    @board.transpose.each { |row| @tally = row
      check_for_win(" VERTICAL") }

    if @board[2][2] == "██"
      if @board[1][1] == "██" && @board[1][3] == "██" && @board[3][1] == "██" && @board[3][3] == "██"
        @tally = @winner
        check_for_win("N INSIDE CORNERS")
      elsif @board[1][2] == "██" && @board[3][2] == "██" && @board[2][1] == "██" && @board[2][3] == "██"
        @tally = @winner
        check_for_win(" SMALL DIAMOND")
      elsif @board[0][0] == "██" && @board[4][0] == "██" && @board[0][4] == "██" && @board[4][4] == "██"
        @tally = @winner
        check_for_win("N OUTSIDE CORNERS")
      elsif @board[3][0] == "██" && @board[4][0] == "██" && @board[3][1] == "██" && @board[4][1] == "██"
        @tally = @winner
        check_for_win(" POSTAGE STAMP")
      end
    end

    @i < @boards.length-1 ? @i +=1 : return # Check the next board or exit
    @board = @boards[@i]
    check_board

  end #check_board

end #class

######################################################################################################
# DRIVER TESTS FOR EACH OF THE METHODS

puts
checkit = BingoScorer.new(boards)
# checkit.display_board
# checkit.check_for_win(" POSTAGE STAMP")
checkit.check_board

=begin
######################################################################################################
REFLECTION

>> Please be sure to RUN this program in terminal if you are reviewing it. Thanks!

1. What concepts did you review or learn in this challenge?

  I reviewed the concepts of creating a Ruby class and instance methods and then calling those methods.
  I also reviewed iterating over and manipulating nested arrays.

2. What is still confusing to you about Ruby?

  There is a lot that's still confusing to me about Ruby. However, most of what confuses me has not
  been covered in Phase 0 (at least not yet). I have also found that switching back and forth between
  JavaScript and Ruby will take some practice as I don't always remember syntax off the top of my head.
  On a more specific note, if there are any good ways to check for the 4 'special' wins without using
  nested IF statements, I would love to know what they are.

3. What are you going to study to get more prepared for Phase 1?

  I am hoping to do at least one more optional Ruby Challenge this week, to read more in our books,
  and to review the Ruby Docs if there is time. I know that's a lot, so avail time will be the key.

=end
