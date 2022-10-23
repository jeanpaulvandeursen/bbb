#!/bin/sh

if [ $2 ]
then
    TOKENID=$2
else
    echo "token id:"
    read TOKENID
fi
if [[ $1 == "add" ]]
then
    echo "token value:"
    read TOKENVALUE
	security add-generic-password -a ${USER} -s ${TOKENID} -w ${TOKENVALUE}
elif [[ $1 == "get" ]]
then
	security find-generic-password -s ${TOKENID} -w | pbcopy
elif [[ $1 == "del" ]]
then
	security delete-generic-password -s ${TOKENID}
fi