=begin
################################################################################
# INTRODUCTION TO INHERITANCE
#
# WE WORKED ON THIS CHALLENGE: Marie-France Han & Lars Johnson

################################################################################
# PSEUDOCODE

   INPUT: A list of students comprising each local cohort
  OUTPUT:



################################################################################
# INITIAL SOLUTION WITH ARRAY DATA STRUCTURE
=end
=begin

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

=end

################################################################################
# INITIAL SOLUTION WITH HASH DATA STRUCTURE

class Cohort

  attr_reader :cities, :ny_names, :ch_names, :sf_names, :name, :p0, :check_date
  attr_accessor :names

    def initialize (cities, ny_names, ch_names, sf_names, p0)
      @cities = cities
      @names = {"New York" => ny_names, "Chicago" => ch_names, "San Fran" => sf_names }
      require "date"
      @day = Date.today
      @p0 = Date.parse(p0)
      @p1 = @p0 + 63
      @p2 = @p1 + 21
      @p3 = @p2 + 21
      @grad = @p3 + 21
      @email = []
    end

  def create_email
     @names.each_key { |key|
        @names[key].each { |element|
          @email.push(element + "@dbc.com")
        }
      }
      return @email
   end

   def students
    @students = 0
      @names.each_key { |key|
        @students += @names[key].length
      }
      return @students
    end

    def add(city, name)
      @names[city] << name
      @names[city].flatten!
    end

    def remove(city, name)
      @names[city].each do |element|
        if element == name
          @names[city].delete(element)
        end
      end
    end

    def what_phase(check_date)
      check_date != "" ? @day = Date.parse(check_date) : @day = Date.today
      if @day < @p1
        return "Currently in Phase-0"
      elsif @day > @p1  &&  @day < @p2
        return "Currently in Phase-1"
      elsif @day > @p2  &&  @day < @p3
        return "Currently in Phase-2"
      elsif @day > @p3  &&  @grad
        return "Currently in Phase-3"
      end
    end

    def graduating
      if @day > @grad
        return "Graduated"
      else
        return "Graduating on #{@grad}"
      end
    end
end


class LocalCohort < Cohort

  attr_accessor :students

    def initialize (students)
      @names = students
    end

    def add(student_name)
      @names << student_name
    end

    def remove(student_name)
      @names.each { |element|
        if element == student_name
        @names.delete(element)
        end
      }
    end

end


cities = ["New York", "Chicago", "San Francisco"]
ny = LocalCohort.new(["Bruno", "Marie-France", "Eunice", "Jon"])
ch = LocalCohort.new(["Parminder", "Josh", "Becca", "Gabrielle"])
sf = LocalCohort.new(["Nicole","Paul", "Jeremy", "Danielle"])
copperheads = Cohort.new(cities, ny.names, ch.names, sf.names, "07-09-2015")

ny.add("Hilary")
ny.remove("Bruno")

p copperheads.names
puts
copperheads.add("New York", "Bruno")
copperheads.remove("San Fran", "Nicole")
puts
p copperheads.names
puts
p copperheads.create_email
puts
p copperheads.students
p copperheads.what_phase("03-03-2016")
p copperheads.graduating
puts
p ny.names
p sf.names
p ch.names

=begin
################################################################################
# REFLECTION

1. What concepts did you review in this challenge?

2. What is still confusing to you about Ruby?

3. What are you going to study to get more prepared for Phase 1?

=end

