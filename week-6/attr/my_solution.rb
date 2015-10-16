
#Attr METHODS

# I WORKED ON THIS CHALLENGE: Lars Johnson

# I spent [3] hours on this challenge.

class NameData

  attr_reader :name

  def initialize(name)
      @name = name
  end

end


class Greetings

  def initialize(name)
    @namedata = NameData.new(name)
  end

  def hello
    puts"Hello #{@namedata.name}! How wonderful to see you today."
  end

end

greet = Greetings.new("Lars")
greet.hello

=begin

# REFLECTION
_____________________________________________________________
RELEASE_1.rb QUESTIONS

1. What are these methods doing?

  The methods in this release are setting and changing the attributes of an instance
  of the Profile class. Profile maintains age, name and occupation within instance
  variables.

2. How are they modifying or returning the value of instance variables?

  When these methods are called, they are given new values using the equals format
  (e.g., instance_name.method_name = new value).


_____________________________________________________________
RELEASE_2.rb QUESTIONS

1. What changed between the last release and this release?

  A reader method (attr_reader) was introduced in this release.

2. What was replaced?

  The method #what_is_age (3 lines) was replaced with 1 line, attr_reader: age
  This also changed the name of the method from #what_is_age, to simply #age.

3. Is this code simpler than the last?

  Yes. This code is simpler than the previous version.


_____________________________________________________________
RELEASE_3.rb QUESTIONS

1. What changed between the last release and this release?

  A writer method (attr_writer) was introduced in this release.

2. What was replaced?

  The method #change_my_age (3 lines) was replaced with 1 line, attr_writer: age
  This also changed the name of the method from #change_my_age, to simply #age.

3. Is this code simpler than the last?

  Yes. This code is simpler than the previous version in that it allows one method,
  #age to handle both the reading and writing (accessing and changing the value) of
  the instance variable @age from outside the class. Also, it's just 2 lines vs. 6.

_____________________________________________________________
RELEASE 6: FINAL QUESTIONS

1. What is a reader method?

  A reader method (e.g., attr_reader :xyz) is a method that returns the value or state
  of a variable outside of its class but does not allow it to be changed.

2. What is a writer method?

  A writer method (e.g., attr_writer :xyz) is a method that allows you to change the
  value or state of a variable outside of its class but does not allow it to be read.

3. What do the attr methods do for you?

  Attr methods allow you to read and write variable values and states with one simple
  line of code versus having to do so within individual methods.

4. Should you always use an accessor to cover your bases? Why or Why not?

  You should definitely NOT always use an accessor to cover your bases for a couple
  of reasons. First, making all variables changable by other methods and classes is
  dangerous from a security standpoint. Second, allowing all variables to be changed
  by other classes and methods (when they don't need that ability) can make it more
  difficult to debug because some variables could be overwritten when and where you
  might not want that to happen.

5. What is confusing to you about these methods?

  I think I now understand the premise of these methods and when they should be used,
  but I was initially confused about how to get Release 5 working (above). The example
  returns an explicit value and I thought we were also supposed to do that, so I was
  not seeing how to benefit from using attr_reader. I'm glad that I now understand it.

=end
