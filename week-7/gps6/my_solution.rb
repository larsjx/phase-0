# Virus Predictor

# I worked on this challenge with: Deanna/Lars.
# We spent [1.5] hours on this challenge.

# EXPLANATION OF REQUIRE_RELATIVE
#
# Require_relative is a way of loading additional data and code
# with an easy to use path vs. Require which has more complex syntax

require_relative 'state_data'

class VirusPredictor


  # The initialize method creates a new instance of the class VirusPredictor
  # using the state data that's passed in to create instance variables

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # This method calls two other methods (predicted deaths) and (speed of spread)
  # passing the appropriate variables as arguments


  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

  # This method calculates the number of predicted deaths based on
  # state population densities and outputs the result to the screen

  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # This method calculates how quickly the outbreak will spread across each
  # state based on population densities and outputs the result to the screen

  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================
# DRIVER CODE
# Initializes VirusPredictor for each state

STATE_DATA.each do |key,value|
  state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
  state.virus_effects
end


#variable = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
# alabama.virus_effects

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# REFLECTION SECTION
=begin

  1. What are the differences between the two different hash syntaxes shown in
     the state_data file?

     The states themselves are keyed as strings (e.g., "Alabama"), and the population
     statistics are keyed as symbols (e.g., population:). My pair and I agreed that
     this approach makes the STATE_DATA file easier to read.

  2. What does require_relative do? How is it different from require?

      Require_relative is an easy way of loading additional data and code to be used
      by a Ruby program. It's easier to use than Require which has more complex path
      syntax.

  3. What are some ways to iterate through a hash?

      #each, #each_pair, #each_key, #each_value and #select are all methods within
      the Hash class that can be used to iterate through a hash. #map and #collect
      also work as members of the Enumerable class, but we've been told that they
      are more frequently used with arrays.

  4. When refactoring virus_effects, what stood out to you about the variables,
     if anything?

      The main thing that stood out to me about the variables was that our original
      author had not taken advantage of the fact that instance variables can be used
      by all methods within their class. Instead of leveraging instance variables in
      this way, they were unnecessarily passing variables as arguments between each
      method.

  5. What concept did you most solidify in this challenge?

      The concept that #map should really be used more for arrays and #each should
      be used more for hashes sunk in for me. In addition, this challenge reinforced
      the value of properly using instance variables. We also learned how to use the
      method #private.


=end