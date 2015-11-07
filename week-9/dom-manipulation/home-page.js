/*
###################################################################################################
DOM MANIPULATION CHALLENGE

WE WORKED ON THIS CHALLENGE: Bruno Zatta & Lars Johnson

PLEASE NOTE THAT WE ALSO COMPLETED CHALLENGE 9.3.2: INTRODUCTION TO JQUERY (IN A SEPARATE DIRECTORY)

THIS FILE ADDS JAVASCRIPT TO HOME-PAGE.HTML

###################################################################################################
RELEASE 1
*/

document.getElementById("release-0").className = "done";

/*
###################################################################################################
RELEASE 2
*/

document.getElementById("release-1").style.display = "none";

/*
###################################################################################################
RELEASE 3
*/

document.getElementsByTagName("h1")[0].innerHTML = "I completed Release 2";

/*
###################################################################################################
RELEASE 4
*/

document.getElementById("release-3").style.backgroundColor = "#955251";

/*
###################################################################################################
RELEASE 5
*/

var release4 = document.getElementsByClassName("release-4");
for (var x = 0; x < release4.length; x++) {
    release4[x].style.fontSize = "2em";
}

/*
###################################################################################################
RELEASE 6
*/

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

/*
###################################################################################################
REFLECTION

1. What did you learn about the DOM?

    Everything we did with DOM in this challenge was new to me and I really enjoyed it. One thing
    that stood out to me is that when selecting multiple elements they get put into an array so
    they can be worked on individually. Very neat.

2. What are some useful methods to use to manipulate the DOM?

    We used getElementByID, getElementsByClass, and getElementbyTagName which are all useful for
    selecting elements of the DOM. We also used className, style.Display, style.fontSize, style.backgroundColor, and appendChild to manipulate it.


PLEASE NOTE THAT WE ALSO COMPLETED CHALLENGE 9.3.2: INTRODUCTION TO JQUERY (IN A SEPARATE DIRECTORY)

*/