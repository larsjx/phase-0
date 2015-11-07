/*
###################################################################################################
CHALLENGE 9.3.2 - INTRODUCTION TO JQUERY

WE WORKED ON THIS CHALLENGE: Bruno Zatta & Lars Johnson

PLEASE NOTE: WE ALSO COMPLETED CHALLENGE 9.3.1: MANIPULATING THE DOM IN JS (IN A SEPARATE DIRECTORY)

*/

$(document).ready(function(){

/*
###################################################################################################
RELEASE 0 - LINK THE IMAGE FILE
*

/*
###################################################################################################
RELEASE 1 -
LINK THIS SCRIPT & THE JQUERY LIBRARY TO THE JQUERY-EXAMPLE.HTML FILE & ANALYZE WHAT THIS CODE DOES
*/

$('body').css({'background-color': 'pink'})

/*
###################################################################################################
RELEASE 2 -
THERE WAS NO CONTENT FOR RELEASE 2 IN THIS CHALLENGE

###################################################################################################
RELEASE 3 -
ADD CODE HERE TO MODIFY THE CSS AND HTML OF DOM ELEMENTS
*/

var bodyElement = $('body');
var outerHeader = $('body h1').filter(':first');
var innerHeader = $('.mascot h1');
var mascot = $('.mascot');
var img = $('img');

outerHeader.css({'color': 'red', 'border-bottom': '5px solid red', 'visibility': 'hidden'});
innerHeader.html('Copperheads');

/*
###################################################################################################
RELEASE 4 -
ADD THE CODE FOR THE EVENT LISTENER HERE
*/

$('img').on('mouseover', function(){
    // e.preventDefault()
    $(this).attr('src', 'copperheads.png')
  })

$('img').on('mouseout', function(){
    // e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })

/*
###################################################################################################
RELEASE 5 -
EXPERIMENT ON YOUR OWN
*/

img.click(function() {
  $('img').animate({height: "toggle"}, 5000 //function() {
    // $( this ).after( "<div>Animation complete.</div>" );
  );
});


})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*
###################################################################################################
REFLECTION

1. What is jQuery?

    jQuery is a JavaScript library that makes writing/executing JavaScript easier and more concise.
    It does this by bundling many common JavaScript tasks into a framework fo easy to use methods.

2. What does jQuery do for you?

    jQuery greatly simplifies the creation of JavaScript enabled solutions.

3. What did you learn about the DOM while working on this challenge?

    Everything I know about manipulating the DOM in Javascript (which isn't very much yet), comes
    from working on this jQuery challenge and its sister challenge 9.3.1 - Manipulating the DOM
    with JavaScript.

    I understand that jQuery will make this much easier than writing standard JavaScript, but I
    haven't really seen that aspect of yet.

PLEASE NOTE: WE ALSO COMPLETED CHALLENGE 9.3.1: MANIPULATING THE DOM IN JS (IN A SEPARATE DIRECTORY)

*/
