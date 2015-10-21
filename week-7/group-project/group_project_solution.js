/*

GROUP PROJECT: ACCOUNTABILITY GROUP 2

############################### PERSON 1 ###############################

USER STORY

As a user, I want to run a Javascript based program that can
perform a few arithmetic and statistical operations with integers.
These integers will be provided in two sets of arrays, one with
an odd number of integers, the other with an even number of integers.

1. SUM - This program will have to accept all the integers from these
two arrays, and add them up to acquire the sum of each set of integers.

2. MEAN - This program will take all the integers from each of these
arrays, and find the means of each set of the numbers. Mean is
calculated by taking the sum of the all integers, divided by the
total number of integers.

3. MEDIAN - Finally, this program will take the sets of numbers and
calculate the median for each of the two sets. Median is defined as
the number that lies at the midpoint of a frequency distribution. In
other words, This program must find the number in the middle of the
list when the numbers are sorted in order from smallest to largest.

############################### PERSON 2 ###############################

PSEUDOCODE

  INPUT: Two arrays
           One array has an odd number of integers
           The other array has an even number of integers

 OUTPUT: Three pairs of numbers for six different numbers in total
           The 1st two numbers will be the SUM of elements within each array
           The 2nd two numbers will be the MEAN of elments within each array
           The 3rd two numbers will be the MEDIAN of elements within each array

STEPS TO CODE:

Create a function called (math) that takes 2 arrays as parameters (evenArray and oddArray)

WITHOUT OVERWRITING EITHER OF THE ORIGINAL ARRAYS:
  1. Sum the elements of (evenArray) and store that result in a variable called (evenSum)
  2. Sum the elements of (oddArray) and store that result in a variable called (oddSum)

WITHOUT OVERWRITING EITHER OF THE ORIGINAL ARRAYS OR ANY OTHER VARIABLE:
  1. Divide (evenSum) by the number of elements in the (evenArray) and store that result
     in a variable (called evenMean)
  2. Divide (oddSum) by the number of elements in the (oddArray) and store that result
     in a variable (called oddMean)

WITHOUT OVERWRITING EITHER OF THE ORIGINAL ARRAYS OR ANY OTHER VARIABLE:
  1. Sort (evenArray) elements from lowest to highest and store them in the array (evenSort)
     Count and divide the number of elements in (evenSort) by 2 and store that result as (x)
     Using (x) and (x-1) as index numbers, identify both elements in the (evenSort) array
     Add the two values from index(x) and index(x-1) then divide by 2. Store that result in
        a new variable called (evenMedian)

        Example: 1,2,3,[4,5,],6,7,8  <-- Add 4+5 then divide by 2

  2. Sort (oddArray) elements from lowest to highest and store them in the array (oddSort)
     Divide the number of elements in (oddSort) by 2 and round down to nearest whole number.
     Use that whole number as the index to grab and store the value at (oddSort[index]).
     Store the value of that element in a variable called (oddMedian).

        Example: 1,2,3,[4],5,6,7  <-- 7 divided by 2 is 3.5. Index of 3 == value of 4

  3. Return the 6 different values we have stored in these variables as our result:
       The results for SUM: (evenSum) and (oddSum) variables
       The results for MEAN: (evenMean) and (oddMean) variables
       The results for MEDIAN: (evenMedian) and (oddMedian) variables


############################### PERSON 3 ###############################

############################### PERSON 4 ###############################

############################### PERSON 5 ###############################
