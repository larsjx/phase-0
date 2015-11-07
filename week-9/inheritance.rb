=begin
###################################################################################################
INTRODUCTION TO INHERITANCE

WE WORKED ON THIS CHALLENGE: Marie-France Han & Lars Johnson

Cohort records have many attributes and methods. Some of them are attributes of Cohort, and some
are of LocalCohort. Consider the following attributes and methods and then decide where they belong,
keeping in mind some of them may belong in both. It's important to note that a Cohort includes all
students who start Phase 0 at the same time, regardless of their location. LocalCohorts are grouped
by location and Phase 0 start date.

###################################################################################################
PSEUDOCODE

LOCAL CLASS
   INPUT: The list of students comprising a particular local cohort (an array)
  OUTPUT: The list of students in a particular local cohort
          The number of students in a particular local cohort
          The email list for students of a particular local cohort

NATIONAL CLASS
   INPUT: The National cohort's names (a string)
          The list of cities in which each cohort resides (an array)
          The list of students in each city (three arrays)
          The start date (a string in date format)
  OUTPUT: The list of students comprising the national cohort
          The number of students in the national cohort
          The email list for the national cohort
          The national cohort's Phase-0 start date
          The national cohort's immersive start date
          The national cohort's current Phase based on today's date
          The national cohort's graduation date
          True or False depending on whether or not the national cohort has graduated

  REQUIRED ATTRIBUTES:
    cities                      - Attribute of national cohort
    students                    - Attribute of national and local cohorts
    cohort_name                 - Attribute of national cohorts
    names (student names)       - Attribute of both national and local cohorts
    p0_start_date               - Attribute of national cohort
    immersive_start_date        - Attribute of national cohort
    graduation_date             - Attribute of national cohort
    email_list                  - Attribute of both national and local cohorts
    num_students                - Attribute of both national and local cohorts

  REQUIRED METHODS:
    add_student
    remove_student
    current_phase
    graduated?

1. Create a class for the local cohort
    Accept a list (an array) of names for each instance (city) of the local cohort
    Allow the list of names to be modified (names added or removed) for each city
    Create an email list for the students in each city
    Return the list of names, email list, or number of students upon request

2. Create a class for the national cohort called GlobalCohort
    Accept the GlobalCohort's name
    Accept a list of cities
    Accept a list (an array) of names from each instance (city) of the local cohort
    Accept a start date for phase 0
    ** Put each list of names into a hash with the key equal to city and values equal to names
    Allow the list of names to be modified (names added or removed) for each city
    Create a national email list for all students
    Return the cohort name, list of names, email list, or number of students upon request
    Return the start date, phase-1 start date, and graduation date upon request
    Return the current phase based on today's date upon request
    Return true or false based on whether or not this cohort has graduated

**NOTES: We originally created this with an array data structure but I wanted to refine this
         by using a hash, so I added that into the pseudocode after updating our solution. I
         also just realized how to use the cohort name in order to track multiple cohorts
         at the same time (copperheads, island foxes, etc). However, that was not part of our
         original solution and it would require an additional level in our data structure, so
         we haven't added that extra functionality in yet.

###################################################################################################
INITIAL SOLUTION WITH ARRAY DATA STRUCTURE


class GlobalCohort

  attr_reader :city, :students, :name, :p0

    def initialize (city, students, p0)
      require "date"
      @today = Date.today
      @city = city
      @students = students
      @email = []
      @p0 = Date.parse(p0)
      @p1 = @p0 + 63
      @p2 = @p0 + 84
      @p3 = @p0 + 105
      @graduation = @p0 + 126
    end

  def create_email
     @students.each do |element|
       @email.push(element + "@dbc.com")
     end
     puts @email
   end

   def num_students
     @num_students = @students.length
     puts @num_students
    end

    def add_student(student)
      @students << student
      @students.flatten!
    end

    def remove_student(student)
      @students.each do |element|
        if element == student
          @students.delete(element)
        end
      end
    end

    def currently_in_phase
      if @today < @p1
        p "Phase-0"
      elsif @today > @p1  &&  Date.today <@p2
        p  "Phase-1"
      elsif @today > @p2  &&  Date.today <@p3
       p  "Phase-2"
      elsif @today > @p3  &&  @graduation
       p  "Phase-3"
      end
    end

    def graduated
      if @today > @graduation
        p "Yes"
      else
        p "No"
      end
    end
end


class LocalCohort < GlobalCohort

  attr_accessor :students

    def initialize (students)
      @students = students
      @number_of_students = @students.length
      p students
    end
end

chicago = LocalCohort.new(["Parminder", "Josh", "Becca", "Gabrielle"])
newyork = LocalCohort.new(["Bruno", "Marie-France", "Eunice", "Jon"])
sanfran = LocalCohort.new(["Nicole","Paul", "Jeremy", "Danielle"])

copperheads = GlobalCohort.new(["Newyork", "Chicago"], chicago.students, "07-09-2015")
copperheads.add_student("Eran")
copperheads.add_student(newyork.students)
copperheads.add_student(sanfran.students)
copperheads.remove_student("Becca")
copperheads.currently_in_phase
copperheads.graduated
copperheads.create_email
copperheads.num_students

###################################################################################################
INITIAL SOLUTION WITH HASH DATA STRUCTURE
=end

class Cohort

  attr_accessor :students

    def initialize (name, cities, ny_students, ch_students, sf_students, p0)
      @cohort_name = name
      @cities = cities
      @students = {"New York" => ny_students, "Chicago" => ch_students, "San Fran" => sf_students }
      require "date"
      @day = Date.today
      @p0 = Date.parse(p0)
      @phase = [@p0, (@p0+7*9), (@p0+7*12), (@p0+7*15), (@p0+7*19)]
      @email = []
    end

  def cohort_name
    @cohort_name
  end

  def p0_start_date
    @p0.strftime("%m/%d/%Y")
  end

  def immersive_start_date
    (@p0+7*9).strftime("%m/%d/%Y")
  end

  def current_phase
    if @day >= @phase[4]
      return "Graduated"
    elsif @day >= @phase[3]
      return "Phase-3"
    elsif @day >= @phase[2]
      return "Phase-2"
    elsif @day >= @phase[1]
       return "Phase-1"
    else
       return "Phase-0"
      end
  end

  def graduation_date
    (@p0+7*19).strftime("%m/%d/%Y")
  end

  def graduated?
    (@p0+7*19) <= @day
  end

   def num_of_students
    @num_students = 0
      @students.each_key { |key|
        @num_students += @students[key].length
      }
      @num_students
    end

    def add(city, name)
      @students[city] << name
      @students[city].flatten!
    end

    def remove(city, name)
      @students[city].each do |element|
        if element == name
          @students[city].delete(element)
        end
      end
    end

   def email_list
     @students.each_key { |key|
        @students[key].each { |element|
          @email.push(element + "@dbc.com")
        }
      }
      return @email
    end

end

class LocalCohort < Cohort

    def initialize (students)
      @students = students
    end

    def add(student_name)
      @students << student_name
    end

    def remove(student_name)
      @students.each { |element|
        if element == student_name
        @students.delete(element)
        end
      }
    end

    def num_of_students
      @students.length
    end

    def email_list
      @city_email_list = []
      @students.each { |element|
        @city_email_list << element + "@dbc.com"
      }
      return @city_email_list
    end

end


=begin
###################################################################################################
DRIVER TEST CODE
=end

name = "Copperheads"
cities = ["New York", "Chicago", "San Francisco"]
ny = LocalCohort.new(["Bruno", "Marie-France", "Eunice", "Jon"])
ch = LocalCohort.new(["Parminder", "Josh", "Becca", "Gabrielle"])
sf = LocalCohort.new(["Nicole","Paul", "Jeremy", "Danielle"])
copperheads = Cohort.new(name, cities, ny.students, ch.students, sf.students, "07-09-2015")

p copperheads.email_list
p ny.email_list
puts

ny.add("Hilary")
ny.remove("Bruno")
p copperheads.students
puts

copperheads.add("New York", "Bruno")
copperheads.remove("San Fran", "Nicole")
sf.add("Kyle")
p copperheads.students
puts

p copperheads.num_of_students

p ny.num_of_students
p ch.num_of_students
p sf.num_of_students
puts

p ny.students
p ch.students
p sf.students
puts

p copperheads.cohort_name
p copperheads.p0_start_date
p copperheads.immersive_start_date
p copperheads.graduation_date
p copperheads.current_phase
p copperheads.graduated?


=begin
###################################################################################################
# REFLECTION

1. What concepts did you review in this challenge?

    We reviewed lots of concepts in this challenge. Attr_reader, attr_writer, attr_accessor, array
    and hash manipulation, class creation, instance methods and instance variables, etc. We also
    learned a bit about inheritance.

2. What is still confusing to you about Ruby?

    Inheritance and how best to use it is still a bit confusing to me (looking forward to phase-1).

3. What are you going to study to get more prepared for Phase 1?

    Phase 1 begins in 2 days and I still have some classwork to do so unfortunately, I don't think
    there will be very much time for extra studying. If I have do have some time, I'm planning to
    look into jQuery and manipulating the DOM with JavaScript a bit more

=end

