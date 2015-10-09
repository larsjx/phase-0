=begin

SUMMARY
In this challenge, you will make your own method to automatically create accountability groups from a list of names. You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person.

This is a creative challenge and you can make it as easy or difficult as you would like. Decide what an MVP (Minimum Viable Product) will look like and what the output should be. This is part of the challenge.

-------------------------------------
RELEASE 1: PSEUDOCODE
-------------------------------------

 INPUT: An array (copperheads) with 55 members of the Copperhead Cohort
OUTPUT: A hashmap (acctgrp) made up of group #s (keys) and group members (values in an array)
        Each group should be no smaller than 3 and no larger than 5 (4 or 5 is ideal)

1. CREATE METHOD that accepts the initial array (copperheads) as an argument
2. CREATE an empty hashmap (mapper) in which keys (names) will be assigned to values (grp_num)
3.    POPULATE keys with all names in sequence and default value of 0 (grp_num = 0)
4. CREATE an empty group counter/array called (grp_idx)
5.  FOR (i) in 0..# of Copperheads
6.    GENERATE random value (grp_num) between 0-XX where : XX == (# copperheads /4)-1
7.      IF group membersship (grp_num) => 4
8.        LOCK group by Assigning 5 to group # at (grp_idx/array)
9.        LOOP back to regenerate new random value
10.     IF NOT (ELSE)
11.       INCREMENT the number of members in that group (grp_idx/array)
12.       ASSIGN member name (key) to grp_num (value) in hashmap (mapper)
13. REPEAT
14. CREATE METHOD for printing to screen that accepts (mapper) as an argument
15. OUTPUT to screen a list of copperheads (names) and groups (grp_num)
16. OUTPUT to screen a list sorted by group number (grp_num)
17.
18. CREATE METHOD to Preserve last 3 lists hashmaps (TBD)

=end

# -------------------------------------
# RELEASE 2: INITIAL SOLUTION
# -------------------------------------

def change_size(groups, rand_cops, num_grps, grp_size)  # ACCEPT USER INPUT TO CHANGE OPTIMAL GROUP SIZE
  puts
  puts "  Enter optimal group size: "
  grp_size = gets.chomp
  if grp_size.to_i >0
    grp_size = grp_size.to_i
    return establish(grp_size)
  else
    return change_size(groups, rand_cops, num_grps, grp_size)
  end
  return stop
end


def establish(grp_size)
  cops = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jefferey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]
  groups = Hash.new
  num_cops = cops.length
  rand_cops = Array.new
  num_grps = num_cops / grp_size
  delta = num_cops-(num_grps*grp_size)
  return rndmize(cops, num_cops, rand_cops, grp_size, num_grps, delta)
end


def rndmize(cops, num_cops, rand_cops, grp_size, num_grps, delta)   # NON-DESTRUCTIVELY RANDOMIZE ARRAY OF COPPERHEADS
  i = 0
  while cops != (("z" * num_cops).split(""))
    r = rand(num_cops)
    if cops[r] != "z"
      rand_cops[i] = cops[r]
      cops[r] = "z"
      i +=1
    end
  end
  return grouper(rand_cops, num_cops, grp_size, num_grps, delta)
end


def grouper(rand_cops, num_cops, grp_size, num_grps, delta)    # CREATE HASHMAP OF ALL GROUPS FROM RANDOMIZED ARRAY
  x = 0
  groups = Hash.new
  for i in 1..num_grps
    groups[i] = rand_cops[x..x+grp_size-1]
    x += grp_size
  end
  groups[i+1] = rand_cops[num_cops-delta..num_cops-1]
  return ui(groups, rand_cops, num_grps, grp_size)
end


def ui(groups, rand_cops, num_grps, grp_size)   # CAPTURE USER DECISION TO DISPLAY GROUPS, CHANGE GROUP SIZE OR QUIT
  inquiry = 0
  puts
  puts "  Enter"
  puts
  puts "  C - Display current listing of all groups"
  puts "  G - Display single group"
  puts "  S - Switch standard group size"
  puts "  Q - Quit "
  action = gets.chomp.downcase
  case action
    when action = "c"
      return show_current(groups, rand_cops, num_grps, grp_size)
    when action = "g"
      return show_group(groups, rand_cops, num_grps, grp_size)
    when action = "q"
      return stop
    when action = "s"
      return change_size(groups, rand_cops, num_grps, grp_size)
  end
  return ui(groups, rand_cops, num_grps, grp_size)
end


def show_current(groups, rand_cops, num_grps, grp_size)   # DISPLAY COMPLETE LIST OF ALL GROUPS
  puts num_grps
  if rand_cops.length % grp_size != 0
    num_grps_print = num_grps + 1
  else num_grps_print = num_grps
    end
    puts
      for i in 1..num_grps_print
        puts "  _________________________"
        puts "  Accountability Group #{i}"
        puts "   #{groups[i].join(", ")}"
        puts
      end
      return ui(groups, rand_cops, num_grps, grp_size)
end


def show_group(groups, rand_cops, num_grps, grp_size)    # DISPLAY AN INDIVIDUALLY REQUESTED GROUP
  if rand_cops.length % grp_size != 0
      temp_num_grps = num_grps + 1
    else
      temp_num_grps = num_grps
  end
  puts
  puts "  Enter a current group number (1-#{temp_num_grps}): "
  inquiry = gets.chomp
  if inquiry.to_i <= temp_num_grps
    puts
    puts "  _________________________"
    puts "  Accountability Group #{inquiry}"
    puts "   #{groups[inquiry.to_i].join(", ")}"
    return ui(groups, rand_cops, num_grps, grp_size)
  else
    puts
    puts "  Not a current group number. Please try again."
    return show_group(groups, rand_cops, num_grps, grp_size)
  end
end


def stop   ### END PROGRAM
end


establish(4)               ### START PROGRAM WITH TYPICAL GROUP SIZE OF 4
# change_size(0,0,0,0)     ### START PROGRAM WITH USER SELECTION OF GROUP SIZE


=begin
-------------------------------------
RELEASE 3: ADD COMPLEXITY (OPTIONAL)
-------------------------------------

If you want to take your solution a step further, consider these questions and make changes to your solution based on your decisions:

  - If you run this program three times in a row, will the program give you three different outputs?

  - Should the program store past outputs?

  - If one person were to leave the cohort, how would the accountability groups change?

  - How do you decide when you're done? You'll need to decide. This is much more challenging than you probably think, especially since there are no pre-written tests.

=end

# -------------------------------------
# RELEASE 4: REFACTOR YOUR SOLUTION
# -------------------------------------



# -------------------------------------
# RELEASE 5: WRITE DRIVER TEST CODE
# -------------------------------------


=begin
-------------------------------------
RELEASE 6: REFLECT
-------------------------------------

1. What was the most interesting and most difficult part of this challenge?

2. Do you feel you are improving in your ability to write pseudocode and break the problem down?

3. Was your approach for automating this task a good solution? What could have made it even better?

4. What data structure did you decide to store the accountability groups in and why?

5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

=end