/*
TALLY VOTES IN JAVASCRIPT PAIRING CHALLENGE
WE WORKED ON THIS CHALLENGE: Paul Gouron & Lars Johnson
THIS CHALLENGE TOOK US 3 HOURS

##########################################################################################################
THESE ARE THE VOTES CAST BY EACH STUDENT. DO NOT ALTER THESE OBJECTS
*/

var votes = {
  // Voter  - -  Index 1 --    Index 2 ---     Index 3 --               Index-4
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

// Once the votes have been tallied, assign each officer position the name of the
// student who received the most votes.

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

var job = Object.getOwnPropertyNames(officers).sort();
// console.log(job)

/*
Set job equal to property names of the officers object: [president, vicePresident, secretary, treasurer]
We use sort to ensure the object's property names wiLl always appear in the same order (as in a loop)

##########################################################################################################
PSEUDOCODE

NOTES: This challenge is about iterating over an object (votes) ccontaining individual voters and their vote
       counts. We must iterate over the value of each property and populate the voteCount object accordingly

       The name of each student receiving a vote for an office should become a property of the respective
       office in voteCount. So for example, after Alex's votes have been tallied voteCount would be:

      var voteCount = {
        president: { Bob: 1 },
        vicePresident: { Devin: 1 },
        secretary: { Gail: 1 },
        treasurer: { Kerry: 1 } }

   INPUT: An object called votes with list of voters and each of their candidates for four different roles
          An object called voteCount with four empty properties (one for each of the four different roles)
          An object called officers with four undefined properties (one for each of the four different roles)

  OUTPUT: We must populate the voteCount object with the number of votes for each candidate in all four roles
          We must populate the officers object with the names of each winner in all four roles

ABOUT TALLYVOTES
  Create a function called tallyVotes to iterate through each voter in votes
    Each voter is voting for 4 people across 4 different jobs
    We created the variable (job) above in order to iterate through every property (job type)
  For each voter in votes...
    TallyVotes iterates through the 4 jobs and their values (candidates) to populate voteCount

ABOUT ELECTIONWINNER
  Create a function called electionWinner to iterate through each property of each the voteCount object
  In other words, iterate through each candidate and the number of votes they received
  Create a variable (record) and store the highest amount of votes for each job
  The winner for each job will be the person with the highest voteCount in that job category

##########################################################################################################
INITIAL SOLUTION


function tallyVotes(){

// Iterate through each voter
for (var voter in votes){

  // iterate through each vote object (with 4 properties - one for each job)
  for (var i=0; i < job.length; i++){

    // create a variable equal to the "index"
    var position = job[i]; // 1st loop is president, 2nd loop is vicePresident, and so on

    // We create a variable query target equal to the finest degree of granularity of the dataset
    // var queryTarget = votes[voter][position]

    // Conditional statement:
    // hasOwnProperty method determines wheater an object has a property with the specified name
    // If the object contains a property we are looking (queryTarget)
    if(voteCount[position].hasOwnProperty(votes[voter][position])){
      // Increment voteCount for this person by one
      voteCount[position][votes[voter][position]] += 1
    }
    // doesnt have the property
    else{
      voteCount[position][votes[voter][position]] = 1;
     }
 // console.log(voteCount)
  }
}
}

tallyVotes();


  // look at each [position] in the votecount object.
  // create var for scores equal to the amount of votes for this persion for one person
  // create var for winner equal to the highest scores value
  // iterate through names in scores and


function electionWinner(){
  // For each kind of office/position/job in voteCount variable
  for (var job in voteCount){
   //   number of votes one person received
  var scores = voteCount[job];
    // Is equal to the maximum value of votes for every job
    var highestValue = 0;
    //(name)
    var winner
    // Iterate through scores and for every name
      for (var name in scores){
      // If the score allocated to this name is > than the actual highestValue
      if(scores[name] > highestValue){
      // highestValue becomes this object (score[name])
      highestValue = scores[name];
      // Then, the winner is allocated the property (name) of this object
      winner = name;
      }
    }
    // We assign the winner name as a value of the property job for every property in the object officers.
    officers[job] = winner;
  }
};

electionWinner();


##########################################################################################################
REFACTORED
*/

// Tallyvotes
function tallyVotes(){
for (var voter in votes){
  for (var i=0; i < job.length; i++){
    var jobs = job[i];
    // We create set variable querytarget equal to the finest degree of granularity of the dataset
    var queryTarget = votes[voter][jobs]
    if(voteCount[jobs].hasOwnProperty(queryTarget)){
      voteCount[jobs][queryTarget] += 1
    }
    else{
      // The first time we encounter a person it counts as one vote (not zero)
      voteCount[jobs][queryTarget] = 1;
     }
  }
}
}
tallyVotes();


// electionWinner
function electionWinner(){
  for (var jobs in voteCount){
  var scores = voteCount[jobs];
    var highestValue = null;
    var winner = null;
      for (var name in scores){
      if(scores[name] > highestValue){
      highestValue = scores[name];
      winner = name;
      }
    }
    officers[jobs] = winner;
  }
};
electionWinner();

/*
##########################################################################################################
REFLECTION

1. What did you learn about iterating over nested objects in JavaScript?

2. Were you able to find useful methods to help you with this?

3. What concepts were solidified in the process of working through this challenge?

##########################################################################################################
TEST CODE: DO NOT ALTER THE CODE BELOW THIS LINE

// Below you will find driver code. Run the code in this file either
// from the command line using Node.js or by pasting the code of this
// entire file into your browser console.  All tests will log true
// in the console when they pass--false, otherwise.
*/

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// TEST1:
// if the voteCount encounters a president vote for bob in the vote object, it will create an object
// containing the name of the person (Bob) and add the value to his/her voteCount. In the case of test1,
// the property bob, contained in the object president, contained in the voteCount object, should be now
// pointing to the value 3.

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

// TEST2:
// if the voteCount encounters a vicePresident vote for bob in the vote object, it will create an object
// containing the name of the person (Bob) and add the value to his/her voteCount. In the case of test1,
// the property bob, contained in the object vicePresident, contained in the voteCount object, should be now
// pointing to the value 2.
assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

// TEST3:
// if the voteCount encounters a secretary vote for bob in the vote object, it will create an object
// containing the name of the person (Bob) and add the value to his/her voteCount. In the case of test1,
// the property bob, contained in the object secretary, contained in the voteCount object, should be now
// pointing to the value 3.
assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

// TEST4:
// if the voteCount encounters a treasurer vote for bob in the vote object, it will create an object
// containing the name of the person (Bob) and add the value to his/her voteCount. In the case of test1,
// the property bob, contained in the object treasurer, contained in the voteCount object, should be now
// pointing to the value 4.
assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

// TEST5:
// Function electionWinner should return Louise (name of the person with the highest amount of votes:5) for
// the role of president. In this case, the function electionWinner is querying the voteCount and returns the
// property in relation with the highest value for each office/job/position. Here, Louise should have the
// largest amount of votes and, hence, be elected as president.
assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

// TEST6:
// Here the function electionWinner should return the value of Hermann (name of the person with the highest
// amount of votes) for the role of vice president.
assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

// TEST7:
// Here the function electionWinner should return the value of Fred (name of the person with the highest amount
// of votes) for the role of vice Secretary.
assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

// TEST8:
// Here the function electionWinner should return the value of Ivy (name of the person with the highest amount
// of votes) for the role of treasurer.
assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)

