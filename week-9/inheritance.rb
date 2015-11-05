################################################################################
# INTRODUCTION TO INHERITANCE
#
# WE WORKED ON THIS CHALLENGE: Marie-France Han & Lars Johnson

################################################################################
# PSEUDOCODE




################################################################################
# INITIAL SOLUTION

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
# REFACTORED SOLUTION

class GlobalCohort

  attr_reader :cities, :ny_students, :ch_students, :sf_students, :name, :p0
  attr_accessor :students, :p1, :p2, :p3, :grad

    def initialize (cities, ny_students, ch_students, sf_students, p0)
      require "date"
      @today = Date.today
      @cities = cities
      @students = { ny: ny_students, ch: ch_students, sf: sf_students }
      @email = []
      @p0 = Date.parse(p0)
      @p1 = @p0 + 63
      @p2 = @p1 + 21
      @p3 = @p2 + 21
      @grad = @p3 + 21
    end

  def create_email
     @students.each_key { |key|
        @students[key].each { |element|
          @email.push(element + "@dbc.com")
        }
      }
      return @email
   end

   def num_students
    @num_students = 0
      @students.each_key { |key|
        @num_students += @students[key].length
      }
      return @num_students
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

    def phase
      if @today < @p1
        return "Phase-0"
      elsif @today > @p1  &&  Date.today <@p2
        return "Phase-1"
      elsif @today > @p2  &&  Date.today <@p3
        return "Phase-2"
      elsif @today > @p3  &&  @grad
        return "Phase-3"
      end
    end

    def graduated
      if @today > @grad
        return "Graduated"
      else
        return "Graduating on #{@grad}"
      end
    end
end


class LocalCohort < GlobalCohort

  attr_accessor :students

    def initialize (students)
      @students = students
      p @students
    end

    def add(student_name)
      @students << student_name
    end

    def remove(student_name)
      @students.each { |element|
        element == student_name ? @students.delete(element) : x=x
      }
    end

end


cities = ["New York", "Chicago", "San Francisco"]
ny = LocalCohort.new(["Bruno", "Marie-France", "Eunice", "Jon"])
ch = LocalCohort.new(["Parminder", "Josh", "Becca", "Gabrielle"])
sf = LocalCohort.new(["Nicole","Paul", "Jeremy", "Danielle"])

copperheads = GlobalCohort.new(cities, ny.students, ch.students, sf.students, "07-09-2015")

ny.add("Hilary")
ny.remove("Bruno")
p ny.students

p copperheads.students

copperheads.add(:ny, "Bruno")
copperheads.remove(:sf, "Nicole")
p copperheads.students

p copperheads.create_email

p copperheads.num_students

p copperheads.phase

p copperheads.graduated




=begin
################################################################################
# REFLECTION

1. What concepts did you review in this challenge?

2. What is still confusing to you about Ruby?

3. What are you going to study to get more prepared for Phase 1?

=end

