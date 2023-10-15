#!/usr/bin/env bash
#Bash script that sets up your web servers
#for the deployment of web_static

if ! command -v nginx &>/dev/null; then
        sudo apt-get update
	sudo apt-get install nginx

fi

mkdir -p /data/
mkdir -p /data/web_static/
mkdir -p /data/web_static/releases/
mkdir -p /data/web_static/shared/
mkdir -p /data/web_static/releases/test/
mkdir -p /data/web_static/releases/test/index.html

#html content to test nginx configuration
html_content="
	<!DOCTYPE html>
	<html>
	<head>
    	<title>Hello World</title>
	</head>
	<body>
    	<h1>Hello, World!</h1>
	</body>
	</html>"
echo "$html_content" > /data/web_static/releases/test/index.html
