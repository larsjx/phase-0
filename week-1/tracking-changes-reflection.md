# How does tracking and adding changes make developers' lives easier?
Tracking and adding changes makes life easier for developers because they are able to move back and forth in history across different versions of their code. This enables them to backup and recover if they introduce something unintended in a particular version. It also provides an opportunity for other team members to view, evaluate and comment on different features before merging them back into the master branch.

# What is a commit?
A commit is the act in git of bundling up of all staged changes inside a tracked folder and taking a snapshot of the current state of your branch or project. This snapshot can then be pushed to GitHub for the optional evaluation, comments and/or approval of other team members before it gets merged back into the master branch.

# What are the best practices for commit messages?
Best practices in creating commit message include writing a descriptive, present-tense imperative headline that is capitalized and under 51 characters. When further description is merited, the headline should be followed by a blank line and then more detailed body text which provides the motivation for any changes and contrasts these changes with previous behavior. Additional paragraphs should be added as necessary, with lists using either dashes or asterisks in place of bullets. Finally, all of this body text should wrap at 72 characters for easy readability and consistency with other git commands.

# What does the HEAD^ argument mean?
The HEAD^ argument refers to the last (most recent) commit. If you need to change something after it has already been committed, you can use the command ‘git reset –soft HEAD^’ to do so.
Similarly, HEAD refers to the current index of staged changes, while HEAD~3, HEAD~4, and HEAD~5 refer to the 3rd, 4th and 5th commit from HEAD.

# What are the 3 stages of a git change and how do you move a file from one stage to the other?
(1) A working directory is the checkout of a particular project version or "feature branch". Modifications (new file creation, edits, etc) are first made in the working directory. (2) Some or all of the changes in the working directory are queued up and staged for commit with the command ‘git add [file or directoryname]’ (3) Finally, all of the staged changes are committed to the repository (git directory) as a save point with the command ‘git commit –m “[Add commit message here]”’, or alternatively ‘git commit –v’ which launches a text editor for the entry of a commit message.

# Write a handy cheatsheet of the commands you need to commit your changes?
git add [file or directoryname] is used to stage changes for commit
git commit –m “[Add commit message here]” is used to commit a snapshot of those changes

# What is a pull request and how do you create and merge one?
Pull requests allow other team members to view, comment and/or stop any changes that have been made to a project’s feature branch [branchname] before it gets merged back in with the master branch. To create and merge a pull request:
  1. First push a feature branch up to GitHub with the command “git push origin [branchname[”
  2. Use a web browser to view it at the URL “https://github.com/[username]/[projectname]”
  3. Find and click on the green button labeled “Compare and Pull” (or the other button labeled “Pull Requests”
  4. Ensure [username] in the URL above matches your own username (or change it to match).
  5. Use the selection boxes to ensure that Base is set to “master” in your own repository, and that Compare is set to “[branchname]”
  6. Click on the button labeled “Create Pull Request”
  7. Review the changes that were made and optionally leave a comment that might be helpful
  8. Click on the “Create Pull Request” button again
  9. Click on the “Merge Pull Request” button followed by “Confirm Merge” button
  10. Finally, as this feature has now been merged back into the master branch it’s safe to delete the feature branch to keep the repo neat. Do this by clicking on the button labeled “Delete Branch”

# Why are pull requests preferred when working with teams?
Pull requests are preferred when working with teams because they enable different team members to view and comment and/or stop any changes that have been made to project feature branches before merging them back in with the master branch.

# Reflection
This challenge was not easy for me. In particular, I had trouble with the concept of pull requests and merging. However, I found that it became easier as I branched out and researched beyond the material that has been provided. I am sure it will take considerable additional practice for all of these concepts to become second nature.