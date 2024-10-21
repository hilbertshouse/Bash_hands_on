#!/bin/bash

if [ $# -eq 0 ]; then
  	echo "No argument provided. Please provide a directory name."
  	exit 1
fi

if [[ "$EUID" -ne 0 ]]; then
  	echo "Please run as root"
  	exit 1
fi

echo "First Argument: $1"

cd "$1" || { echo "Directory '$1' not found"; exit 1; }

if [ ! -e ".gitignore" ]; then
	echo ".gitignore file not found."
	exit 1
fi

if [ ! -d ".git" ]; then
        echo ".git directory not found."
        exit 1
fi 

if [ ! -e ".gitattributes" ]; then
        echo ".gitattributes file not found."
        exit 1
fi 

echo "All required files and directories found. Proceeding..."

rm -rf .git
sleep 2
rm .gitignore .gitattributes
sleep 2


cp ../boxesApp/.gitignore ./
cd ../


git add "$1"
sleep 2
git status 
sleep 5
git commit -m"Committing $1 files with bash script."
sleep 5

echo "Enter your GitHUb credentials for git push:"
read -p "Username:" username
read -s -p "Password: " password
echo

sleep 2

touch ./.git-credentials
git config credential.helper 'store --file ./.git-credentials'
echo "https://$username:$password@github.com" > ./.git-credentials
chmod 600 ./.git-credentials

sleep 3

git push origin master

sleep 2

rm ./.git-credentials

exit 0
