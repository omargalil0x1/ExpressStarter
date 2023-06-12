#!/usr/bin/bash

echo "Checking Node in your machine...";

if ! node -v
then
	echo "node command isn't found";
	
	echo "Trying \"nodejs\" instead of \"node\"...";
	
	if ! nodejs -v
	then
		echo "nodejs command isn't found in your system!";
		
		echo "Installing Nodejs using ==> sudo apt install nodejs";
		
		sudo apt install nodejs # installing nodejs on your system using "apt", depends on your machine.
	else
		echo "Nodejs is found in your machine!";
		echo $(node --version);
	fi

else
	echo "Nodejs is found in your machine!";
	echo $(node --version); # printing the version of nodejs that is installed in your machine (in case it is installed on your system).
fi


echo "Checking npm in your system...";

if ! npm -v
then
	echo "NPM (Node Package Manger) isn't found in your system, installing it...";
	sudo apt install npm
else
	echo "NPM is found in your machine!";
fi


echo " ";
# starting to initialize ExpressJs Project.
echo "===================Starting ExpressJs Project===================="

read -p "Enter your project name : " project_name
read -p "Enter your server port number : " server_port_number;

if [ -d $project_name ]
then
	echo "Project Already Exists!"
else
	mkdir $project_name # creating folder by the name that is being taken as user input.

	cd $project_name # getting inside the project name.

	npm init -y &2> npm.logs #starting to initialize npm project and including the packages.

	touch server.js

	echo "
	{
  		\"name\": \"$project_name\",
  		\"version\": \"1.0.0\",
  		\"description\":\"this is $project_name for $(whoami)\",
  		\"main\": \"server.js\",
  		\"scripts\": {
   			\"startserver\": \"nodemon server.js\"
  		},
  		\"keywords\": [],
		\"author\": \"$(whoami)\",
  		\"license\": \"ISC\"
	}
	" > package.json # inserting some scripts and changing contents of "package.json".

	npm install express --save 
	npm install nodemon
fi


echo "const express = require('express');
const app = express();

let port_number = $server_port_number; // port number for your server.

app.get(\"/\", (request, response) => {
	response.status(200).send(\"<h1> ExpressJs Project is working :) </h1>\");
});

app.listen($server_port_number, () => {
	console.log(\"Server started at Port Number : \" + port_number);
});
" >> server.js # inserting content to "server.js" file.


echo "=======================================================";

echo "
-----------------------------------------
Scripts added : - nodemon server.js
-----------------------------------------
Packages Installed : express, nodemon
-----------------------------------------
Scripts : server.js (main server js file)
-----------------------------------------
Package name : $project_name,
Package version : (1.0.0),
-----------------------------------------
Server Port Number : $server_port_number
"

nodemon server.js
