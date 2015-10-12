
## THIS IS MY FIRST REFACTORING OF ACCT_GRPS.RB


# TAKE USER INPUT FOR IDEAL GROUP SIZE : ENTERING GROUP SIZE ALSO PRODUCES A NEW LIST OF GROUPS
def change_group_size(groups, rand_cops, num_grps)
  puts
  print "  Enter ideal group size (3-5): "
  grp_size = Integer(gets) rescue change_group_size(groups, rand_cops, num_grps)
  if grp_size <3 || grp_size >5
    change_group_size(groups, rand_cops, num_grps)
  else
    return establish_cohort(grp_size)
  end
end

# FEEL FREE TO EDIT, ADD, OR REMOVE ANY OF THESE NAMES
def establish_cohort(grp_size)
  cops = ["Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jefferey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustilo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Christopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jeremy Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]
  return randomize(cops, grp_size)
end

# NON DESTRUCTIVELY RANDOMIZE THE ARRAY OF COPPERHEADS
def randomize(cops, grp_size)
  rand_cops = Array.new
  num_cops = cops.length
  num_grps = num_cops / grp_size
  delta = num_cops-(num_grps*grp_size)
  if delta !=0 then extra_grp = num_grps + 1
  else extra_grp = num_grps
  end
  while cops.length > 0
    rnd = rand(cops.length)
    rand_cops << cops[rnd]
    cops.delete_at(rnd)
  end
  return grouper(rand_cops, num_cops, grp_size, num_grps, delta, extra_grp)
end

# CREATE A NEW HASHMAP CONTAINING ALL GROUP MEMBERS (as Value)
def grouper(rand_cops, num_cops, grp_size, num_grps, delta, extra_grp)
  x = 0
  groups = Hash.new
  for i in 1..num_grps
    groups[i] = rand_cops[x..x+grp_size-1]
    x += grp_size
  end
  groups[i+1] = rand_cops[num_cops-delta..num_cops-1]
  return show_all_groups(groups, rand_cops, num_grps, grp_size, extra_grp)
end

# DISPLAY THE COMPLETE LIST OF ALL GROUPS
def show_all_groups(groups, rand_cops, num_grps, grp_size, extra_grp)
  puts
  for i in 1..extra_grp
    puts "  _______________________"
    puts "  ACCOUNTABILITY GROUP #{i}"
    puts "  => #{groups[i].join(", ")}"
    puts
  end
  return ui(groups, rand_cops, num_grps, grp_size, extra_grp)
end

# DISPLAY ANY INDIVIDUALLY REQUESTED GROUP
def show_one_group(groups, rand_cops, num_grps, grp_size, extra_grp)
  puts
  print "  Enter a current group number (1-#{extra_grp}): "
  inquiry = Integer(gets) rescue show_one_group(groups, rand_cops, num_grps, grp_size, extra_grp)
  if inquiry.to_i <= extra_grp
    puts
    puts "  _______________________"
    puts "  ACCOUNTABILITY GROUP #{inquiry}"
    puts "   #{groups[inquiry.to_i].join(", ")}"
    return ui(groups, rand_cops, num_grps, grp_size, extra_grp)
  else
    return show_one_group(groups, rand_cops, num_grps, grp_size, extra_grp)
  end
end

# USER CHOOSES 1 OF 4 ACTIONS: DISPLAY ALL GROUPS, DISPLAY 1 GROUP, CHANGE GROUP SIZE, OR QUIT
def ui(groups, rand_cops, num_grps, grp_size, extra_grp)
  if rand_cops.length % grp_size != 0
    temp_num_grps = num_grps + 1
  else
    temp_num_grps = num_grps
  end
  inquiry = 0
  puts
  puts "  S - Show current listing of all groups"
  puts "  D - Display single group"
  puts "  C - Change ideal group size"
  print "  Q - Quit "
  action = gets.chomp.downcase
  case action
    when action = "s"
      return show_all_groups(groups, rand_cops, num_grps, grp_size, extra_grp)
    when action = "d"
      return show_one_group(groups, rand_cops, num_grps, grp_size, extra_grp)
    when action = "c"
      return change_group_size(groups, rand_cops, num_grps)
    when action = "q"
      return stop
  end
  return ui(groups, rand_cops, num_grps, grp_size, extra_grp)
end

# END PROGRAM
def stop
  exit!
end


# START PROGRAM WITH A TYPICAL GROUP SIZE OF 4
establish_cohort(4)
