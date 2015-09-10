#1.1 Think About Time

This challenge exposed me to several time management and productivity ideas but I decided to focus in on our ability to cultivate a growth mindset and good habits through small repeated wins. This is consistent with the Fogg method for creating successful habits by putting behavior above attitude, finding an existing trigger and repeating a very small behavior that can be expanded upon over time. I found it helpful to learn that some people have both a fixed and growth mindset, and that their proportion of growth mindset can be increased with persistence and repeated success.

Timeboxing is the act of working for a prescribed amount of time and then stopping to evaluate accomplishments whether or not the work is complete. I will be timeboxing in Phase 0 to stay on schedule, sharpen my focus and hopefully learn more. As a perfectionist, I expect this to be a challenge – at least initially.

I currently manage my time with lists of action items and due dates that I review daily and check off as tasks are completed. This approach has generally worked well for me, but I tend to get bogged down and spend more time than necessary on individual tasks (to the point of diminishing returns). In order to accommodate the pace and scope of Phase 0, I will be expanding my current process.

My new time management plan for Phase 0 will still lean heavily on to-do lists and due dates, but I will also be scanning each challenge for borders before jumping in, estimating the time that I plan on spending, timeboxing certain tasks, and taking breaks to help keep me focused and on track. I have never tried meditation before, but I am also looking forward to trying the mindful meditation app, Headspace, during some breaks to manage stress while improving focus, memory and creativity.

#1.2 The Command Line

A Unix shell is a both a command line interpreter and a programming language that enables the most efficient access to the inner workings of a computer. Shells can be used interactively by giving them commands, options and arguments from the keyboard, or they can run commands from a file (like .bash_profile or test.rb). There is more than one type of shell and different people generally prefer one shell over the others. In Dev Bootcamp, we’re using the bash shell which is the default on Mac OS (and some other operating systems). Just like other shells, bash includes modifiable commands along with modifiable elements of the user interface and operation.

For me, the most challenging part of this exercise was (and will continue to be) trying to memorize a large number of commands and some of the options that go with them. For example, I will definitely need more practice to really get familiar with find, grep, and xargs.

I was able to use all of the commands successfully, but for some reason (that I’ve not yet had time to pursue) the command “apropos” seems to be returning mostly illegible text.

I believe man is the most important command because its manual pages are the key to unlocking everything else. Having said that, I also believe ls, find, grep and xargs are very important because they can be used to find various combinations of files plus very specific content within those files.

Command Line Definitions

  pwd – stands for print working directory. It displays the path of your current directory.

  ls – lists the contents of your current directory. It can be used with options (like –a or -l) to display hidden files, show permissions, ownership, file size, and more.

  mv – is used to move or rename files.

  cd – is used to change your current working directory.

  ../ – is used in conjunction with other commands to go up one level in the filesystem.

  touch – creates a new empty file or files. It also changes the timestamp on an existing file.

  mkdir – makes a new directory or directories.

  less – invokes a pager program that makes it easy to view files one page at a time.

  rmdir – removes an empty directory or directories.

  rm – removes a file or files. When used with the –rf option, it will remove a directory and its contents.

  help – displays manual pages (windows variant of man).

#1.4 Forking and Cloning

I would provide a new person with the following instructions for creating a new repo, forking an existing repo and cloning a repo to their computer…

Follow these steps to create a new repository (repo) in your account on GitHub:

1. First, go to your own GitHub page such as github.com/larsjx
2. Click on the plus sign (+) in the upper right hand corner next to your profile pic
  * Select “New repository”
3. On the next page, enter the attributes of your new repository
  * Enter your repository name and provide an optional description
  * Select whether to make your repository public or private
  * Select if you want to Initialize this repo with a README
  * Leave the “Add .gitignore” selector set to None
  * Select “MIT License” from the list of options under “Add a license.”
  * At the bottom of the page, click on the button to “Create” your new repository
  * That’s it. Your new repo has been created!

You may also wish to consider forking an existing repo vs. starting from scratch with your own new repository. Forking is the process of copying a pre-existing repo in its current state to your own account so you can work with that material. The fork can then be used to provide feedback on someone else’s work or as a new starting point for work of your own.

You’ll be glad to learn that forking an existing repo is also quite simple!

1. First, go to the GitHub page containing the repo you want to fork
(i.e., github.com/account/repotobeforked)
2. Next, just below your profile picture in the upper right, click on the “Fork” button
3. In the box that pops up, select your own GitHub profile as the target for this fork
4. That’s all there is to it. You will now be taken to that fork’s page in your account

So now you have either created your own new repo, forked a pre-existing one, or both. For the moment, these will only exist on GitHub’s servers. In order to work with that material locally, you must also “clone” it onto your own computer.

1. To clone any repo to your own computer, go to the GitHub page of the repo that you want to clone (i.e., github.com/account/repotobecloned)
2. Next on the right hand side of the page and just below “Settings”, you will see the words “HTTPS clone URL” with small text box containing a URL just below that.
3. You want to click on the icon just to the right of that URL and this will copy the URL to your clipboard.
4. At the command line on your computer, type the following command, paste the URL from your clipboard and then hit enter.
  * git clone [paste copied URL here]
  * If you're asked for your GitHub userid/password, it’s ok to provide them here
5. And you’re finished! There is now a local copy (or clone) of the GitHub repository that you selected. Have Fun!

---

Fortunately, I didn’t have much trouble with this challenge and I learned that using GitHub and Git, at least for these tasks, is quite straightforward. I was able to create a new repo, fork DBC’s and clone both of them without any problems. However, in my practicing, it did take me a little while to find the Settings button on GitHub so I could delete and recreate my repos and forks.