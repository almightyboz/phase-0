#Assignment 1.5 -- Tracking Changes#

*How does tracking and adding changes make developers' lives easier?*
Can identify bugs in recent commits that aren't in prior versions. Also allows teams of people to identify who made what changes to the code, based on what original template code, and when. (Hunting for changes line-by-line and asking everybody to check their clocks for what changes they remember, and when, is a pain. And so is keeping a huge file of (meticulously documented) drafts of the code.)

*What is a commit?*
A preserved, time-stamped draft of a file. Has the time it was made, and usually a message detailing what the change was.

*What are the best practices for commit messages?*
Detailed, written in imperative tense. Describes why you decided it needed a change, where you got the idea for the change, and contrasts your change with the prior version of the code.

*What does the HEAD^ argument mean?*
It's the most recent commit you made.

*What are the 3 stages of a git change and how do you move a file from one stage to the other?*
An added file, a commited file, and a pushed file. From your desired branch, you add as many as you want to the added file stage and commit the whole batch of them with a single commit command. Then you push the whole branch to origin.


*Write a handy cheatsheet of the commands you need to commit your changes?*
commit
add
status
log
reset
checkout

*What is a pull request and how do you create and merge one?*
A way to merge code from a feature (i.e. different) branch into the master branch. You push the data from your machine to GitHub and use the prompts on the site to open and check the branch identities and file, then create the pull request.

*Why are pull requests preferred when working with teams?*
I don't really know right now. I assume that it's to prevent any one team member from making major changes to the "preferred" template for the code in the master repository. Especially if it's without the other team members realizing it.