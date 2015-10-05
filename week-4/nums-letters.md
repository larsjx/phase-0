# Challenge 4.2

## R1: Numbers in Ruby

### Links to each solution:

  * [defining-variables.rb](https://github.com/larsjx/phase-0/blob/master/week-4/defining-variables.rb)
  * [simple-string.rb](https://github.com/larsjx/phase-0/blob/master/week-4/simple-string.rb)
  * [basic-math.rb](https://github.com/larsjx/phase-0/blob/master/week-4/basic-math.rb)


### 1. What does puts do?

  **puts** will return *nil* and print the output to the console with a new line

### 2. What is an integer? What is a float?

  An **Integer** is a whole number without a decimal point, and a **float** is a number with  a decimal point (**float** stands for floating point).

### 3. What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

  **Integer division** returns only whole numbers with no decimal point and **float division** returns a more precise result that has a decimal point.

  Float division is what people are generally used to doing because we usally care about the amount left over. However there are situations when it just doesn't matter what comes after the decimal point, and those are great for integer division. For example if a particular skateboard costs $100 and you wanted to know how many you could buy if you had $230, the answer using integer division is only 2 because you can't buy any fraction of a skateboard.


## R2: Conversion examples

```ruby
    # Compute number of hours in a year
    puts 365 * 24

    # Compute number of minutes in a decade
    puts ((365 * 24) * 60) * 10
```


## R5: Exercise files

  4.2.1 Link to [defining-variables.rb](defining-variables.rb)

  4.2.2 Link to [simple-string.rb](simple-string.rb)

  4.2.3 Link to [basic-math.rb](basic-math.rb)


## R7: Reflection

### How does Ruby handle addition, subtraction, multiplication, and division of numbers?

  Ruby uses the following arithmetic operators:

          Addition: +
       Subtraction: -
    Multiplication: *
          Division: /
           Modulus: %  (returns the remainder of a division operation)

  Note: when dividing, one of the two numbers must be a float unless you want the answer to be rounded down to the nearest whole number


### What is the difference between integers and floats?

  An **Integer** is a whole number without a decimal point, and a **float** is a number with a decimal point (**float** stands for floating point).


### What is the difference between integer and float division?

  **Integer division** will return only whole numbers (rounded down) while **float division** returns a more precise decimal number.


### What are strings? Why and when would you use them?

  **Strings** are groups of characters enclosed in quotation marks. They can contain spaces or even be empty. Under the right conditions strings can be added and multiplied. For example:

```ruby
    "Octo" + "cat" = "Octocat"
    "Octo" + "123" = "Octo123"
    "Octo" * 3 = "OctoOctoOcto"
```

### What are local variables? Why and when would you use them?

  **Variables** are like re-usable storage containers for different objects (like strings or numbers). We can assign an object to a variable and then re-use that variable in place of the object.

  **Local variables** are variables with local scope, meaning they will only be recognized within certain parts of a program. This is in contrast to **global variables** which are recognized throughout an entire program.


### How was this challenge? Did you get a good review of some of the basics?

  This is was a worthwhile challenge for me. Just when I thought it was a bit too easy, I allowed a one-letter typo in **basic-math.rb** to really confuse me. When I executed **rspec basic-math.rb** it gave me about 12 lines of error and none of them were rspec errors. I wasn't sure what was happening, but ultimately, I discovered the typo and everything worked fine.