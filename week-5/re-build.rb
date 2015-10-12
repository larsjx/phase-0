=begin

THIS IS MY FINAL REFACTORING OF ACCT_GROUPS.RB
I RE-WROTE THE CORE LOGIC INTO 3 LINES (30-32)
AFTER SEEING #shuffle AND Enumerable#each_slice
IN THIS WEEK'S QUIZ. ALSO NOTE THAT WITHOUT THE
UI, I CAN GET THIS DOWN TO JUST 10 LINES.

=end

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

# USER CHOOSES 1 OF 4 ACTIONS: DISPLAY ALL GROUPS, DISPLAY 1 GROUP, CHANGE GROUP SIZE, OR QUIT
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