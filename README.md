# ExpressStarter
ExpressJs Project Initializer/ExpressStarter Made by Omar Mohamed aka (rodan0x1).

Info :
======
- Express Starter is created by Bash Script and has the ability to be executed in zsh (z-shell) -or- bash (bourne-again shell).

About :
=======
- Express Starter main goal is to automate the process of creating express.js projects and installing important packages.


How does it work ? :
====================
- express-starter has the ability to initialize the needed folders and files for your Express.js project, also adds
the needed scripts that could be executed by "npm",
also puts the main Express.js server file in (monitor mode) using "nodemon" command-line utility to monitor the changes
of the Express.js main server file.

- express-starter creates folder of the project with the chosen name, and then start to initialize some npm configurations,
and adds its neccssary files like "package.json" -or- "package-lock.json".
then it starts by changing the content of "package.json" file in order to add scripts to be executed by "npm",
then it creates file called "server.js" which is the main file for the Express.js server.

- express-starter asks about your server's port number that you want to operate on, (make sure that the port isn't used by other procss) in your system (THIS MIGHT CAUSE THE SERVER TO CRASH).

- express-starter adds default route for your root "/" url, in server.js main Express.js server file.

How to run express-starter :
============================
(in the current directory of 'ExpressStarter') --> ./express-starter.sh -or- bash ./express-starter.sh

