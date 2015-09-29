# Challenge 4.1

## R1: Numbers in Ruby

### 1. What does puts do?

  **puts** will return *nil* and print the output to the console with a new line

### 2. What is an integer? What is a float?

  An **Integer** is a whole number without a decimal point, and a **float** is a number with  a decimal point (**float** stands for floating point).

### 3. What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

  **Integer division** returns only whole numbers with no decimal point and **float division** returns a more precise result that has a decimal point.

  Float division is what people are generally used to doing because we usally care about the amount left over. However there are situations when it just doesn't matter what comes after the decimal point, and those are great for integer division. For example if a particular skateboard costs $100 and you wanted to know how many you could buy if you had $230, the answer using integer division is only 2 because you can't buy any fraction of a skateboard.


## R2: Conversion Examples

```ruby
# Compute number of hours in a year
puts 365 * 24


# Compute number of minutes in a decade
puts ((365 * 24) * 60) * 10
```
