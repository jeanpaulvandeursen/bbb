#!/bin/sh
for app in outlook teams;do sudo kill -9 `ps -ef | grep -i $app | awk 'NR==1{print $2}'`;done
if [[ $1 == "-h" ]]
then
	exit 1
else
	sleep 3
	open /Applications/Microsoft\ Outlook.app/
	open /Applications/Microsoft\ Teams.app/
fi
