=begin

SUMMARY
In this challenge, you will make your own method to automatically create accountability groups from a list of names. You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person.

This is a creative challenge and you can make it as easy or difficult as you would like. Decide what an MVP (Minimum Viable Product) will look like and what the output should be. This is part of the challenge.

-------------------------------------
RELEASE 1: PSEUDOCODE
-------------------------------------

 INPUT: An array (cops) with 55 members of the Copperhead Cohort
OUTPUT: A hashmap (groups) made up of group #s (keys) and group members (values in an array)
        Each group should be no smaller than 3 and no larger than 5 (4 or 5 is ideal)

1. CREATE METHOD (randomize) that accepts the initial array (cops) as an argument
2. CREATE an empty hashmap (groups) in which keys (names) will be assigned values (grp_num)
3.    POPULATE keys with all names in sequence and default value of 0 (grp_num = 0)
4. CREATE an empty group counter/array called (grp_idx)
5.  FOR (i) in 0..# of Copperheads
6.    GENERATE random value (grp_num) between 0-XX where : XX == (# copperheads /4)-1
7.      IF group membersship (grp_num) => 4
8.        LOCK group by Assigning 5 to group # at (grp_idx/array)
9.        LOOP back to regenerate new random value
10.     IF NOT (ELSE)
11.       INCREMENT the number of members in that group (grp_idx/array)
12.       ASSIGN member name (key) to grp_num (value) in hashmap (groups)
13. REPEAT
14. CREATE METHOD for printing to screen that accepts (groups) as an argument
15. OUTPUT to screen a list of copperheads (names) and groups (grp_num)
16. OUTPUT to screen a list sorted by group number (grp_num)
17.
18. OPTIONAL -- CREATE METHOD to Preserve last 3 lists hashmaps (TBD)


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


-------------------------------------
RELEASE 3: ADD COMPLEXITY (OPTIONAL)
-------------------------------------

If you want to take your solution a step further, consider these questions and make changes to your solution based on your decisions:

  If you run this program three times in a row, will the program give you three different outputs?

    YES. This program provides different output each time it's run or whenever the ideal group size is changed.

  Should the program store past outputs?

    YES, but only for fun. Normally this program would not store past outputs because we haven't learned how to access the file system in Ruby yet, and recalling another output from the sames session has an extremely limited use case. However, I know how to do this and would like to add it when I have time.

  If one person were to leave the cohort, how would the accountability groups change?

    The only way to modify our cohort in this program is by editing the array in which names are stored (cops). The array can be any size down to just 4 names because 4 is the default group size. By the way, if you remove lines 194-196 and 198, the program will allow you to select ANY groups size too.

  How do you decide when you're done? You'll need to decide. This is much more challenging than you probably think, especially since there are no pre-written tests.

    I've decided I'm done because I've written a fully functional program that includes all of my initially intended features and doesn't throw any errors. Two feature that I would like to add at some point are the ability to print and recall past group sets.

=end

# -------------------------------------
# RELEASE 4: REFACTOR YOUR SOLUTION
# -------------------------------------

## PLS NOTE THIS PROGRAM CAN BE RUN WITH ANY ONE OF THE FOLLOWING METHOD CALLS
##          IT CAN ALSO BE RUN IN ABOUT 12 LINES WITHOUT THE USER INTERFACE
##
## METHOD1 (establish_cohort) ON 204 ACCEPTS A TYPICAL GROUP SIZE AND CREATES AN ARRAY OF COPPERHEADS
## METHOD2 (change_group_size) ON 192 ACCEPTS 2 ZEROS & STARTS BY ASKING USER FOR AN IDEAL GROUP SIZE
## METHOD3 (randomize) ON 209 ACCEPTS AN ARRAY OF ALL NAMES IN THE COHORT PLUS AN IDEAL GROUP SIZE
## METHOD4 (show_all_groups) ON 217 ACCEPTS AN ARRAY OF GROUPS TO START WITH DIFFERENT GROUPS

# TAKE USER INPUT FOR IDEAL GROUP SIZE : ENTERING GROUP SIZE ALSO PRODUCES A NEW LIST OF GROUPS
def change_group_size(groups, num_grps)
  puts
  print "  Enter ideal group size (3-5): "
  grp_size = Integer(gets) rescue change_group_size(groups, num_grps)
  if grp_size <3 || grp_size >5
    change_group_size(groups, num_grps)
  else
    return establish_cohort(grp_size)
  end
end

# FEEL FREE TO EDIT, ADD, OR REMOVE ANY OF THESE NAMES
def establish_cohort(grp_size)
  cops = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jefferey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]
  return randomize(cops, grp_size)
end

def randomize(cops, grp_size)
  groups = Array.new
  groups = cops.shuffle.each_slice(grp_size).to_a
  num_grps = groups.length
  return show_all_groups(groups, num_grps, grp_size)
end

# DISPLAY THE COMPLETE LIST OF ALL GROUPS
def show_all_groups(groups, num_grps, grp_size)
  puts
  for i in 0...num_grps
    puts "  _______________________"
    puts "  ACCOUNTABILITY GROUP #{i+1}"
    puts "  => #{groups[i].join(", ")}"
    puts
  end
  return ui(groups, num_grps, grp_size)
end

# DISPLAY ANY INDIVIDUALLY REQUESTED GROUP
def show_one_group(groups, num_grps, grp_size)
  puts
  print "  Enter a current group number (1-#{num_grps}): "
  inquiry = Integer(gets) rescue show_one_group(groups, num_grps, grp_size)
  if inquiry <= num_grps && inquiry != 0
    puts
    puts "  _______________________"
    puts "  ACCOUNTABILITY GROUP #{inquiry}"
    puts "   #{groups[inquiry-1.to_i].join(", ")}"
    return ui(groups, num_grps, grp_size)
  else
    return show_one_group(groups, num_grps, grp_size)
  end
end

# USER CHOOSES 1 OF 4 ACTIONS: SHOW ALL GROUPS, DISPLAY 1 GROUP, CHANGE GROUP SIZE, OR QUIT
def ui(groups, num_grps, grp_size)
  puts
  puts "  S - Show current listing of all groups"
  puts "  D - Display single group"
  puts "  C - Change ideal group size"
  print "  Q - Quit "
  action = gets.chomp.downcase
  case action
    when action = "s"
      return show_all_groups(groups, num_grps, grp_size)
    when action = "d"
      return show_one_group(groups, num_grps, grp_size)
    when action = "c"
      return change_group_size(groups, num_grps)
    when action = "q"
      return stop
  end
  return ui(groups, num_grps, grp_size)
end

# END PROGRAM
def stop
  exit!
end

# START PROGRAM WITH A TYPICAL GROUP SIZE OF 4
establish_cohort(4)


# -------------------------------------
# RELEASE 5: WRITE DRIVER TEST CODE
# -------------------------------------


## TEST METHOD ON LINE 204 ACCEPTS AN INTEGER TO START WITH IDEAL GROUP SIZE
# establish_cohort(4)

## TEST METHOD ON LINE 217 ACCEPTS AN ARRAY CONTAINING ALL GROUPS TO START WITH DIFFERENT GROUPS
# show_all_groups([["Jill","Jim","Jane","Jackie"]],1,4)

## TEST METHOD ON LINE 209 ACCEPTS ARRAY CONTAINING ALL COHORT NAMES, AND IDEAL GROUP SIZE
# randomize(["Sarah","Stan","Sally","Sue"], 4)

## TEST METHOD ON LINE 192 ACCEPTS 2 ZEROS TO START BY ASKING THE USER FOR AN IDEAL GROUP SIZE
# change_group_size(0,0)


=begin
-------------------------------------
RELEASE 6: REFLECT
-------------------------------------

1. What was the most interesting and most difficult part of this challenge?

    I had trouble with the logic of creating random groups of a selectable size and properly handling the remainder. I thought I had broken the problem down into pseudocode that would translate easily into code, but the approach in my pseudocode turned out to be convoluted and ineffective so I had to create new logic. Next time that happens, I'm going to re-write my pseudocode too.


2. Do you feel you are improving in your ability to write pseudocode and break the problem down?

    I do feel that I'm improving my abilty to write pseudocode and break problems down. It's hard to tell from my pseudocode here because I ended up using different logic, but I am definitely feeling more comfortable. I am also now working offine with pen and paper to break everything down. When I had to create new logic for this challenge I drew flow charts with inputs/outputs, and wrote some shorthand pseudocode to figure things out. My initial solution randomizes the copperheads, populates each group in sequence and simultaineously puts each group into a hash value. That ended up being much more practical than what I originally had in pseudocode. Fortunately, I was able to improve on that too.


3. Was your approach for automating this task a good solution? What could have made it even better?

    My pseudocode was flawed, but I ended up with an initial and refactored approach that I believe is solid. I am guessing there are still better methods to replace my core logic, but in reality my user interface makes up over 70% of the code. Now that I know a little about classes, instance methods and instance variables, I think re-coding with that approach could make things more efficient and even easier to read. I would also like to add a method for storing and retreiving old group lists.


4. What data structure did you decide to store the accountability groups in and why?

    I initially decided to store the accountability groups in a hash because they are very easy to access. I also felt using a hash would give me more flexibility in terms of adding features. However, in hindsight I was wrong.

    During my final refactoring, I realized that an array in which each group is an element makes at least as much sense as using a hash. It also dawned on me that this makes it easy to add a storage and retrieval method by storing the entire shuffle and sliced list as an element in a separate array versus what I tried doing originally which was to store and retrieve each group individually.


5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

    After this week's quiz, I realized that I could refactor with #shuffle which returns a new array of randomized elements, and Enumerable#each_slice which iterates over a given block and returns an array of the specified number of elements. Awesome!

    I also learned how to use Integer() to validate that an object is an integer, and I used rescue for error handling in the same user interaction.


=end
