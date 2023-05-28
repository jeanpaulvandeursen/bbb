GITHUB_API_TOKEN=`token.sh get github`

if [[ $? -ne 0 ]]
then
        echo "No token 'github' found"
        exit 0
fi

if [ $1 ]
then
    REPO_NAME=$1
else
    echo "What repo do you want to delete?"
    read REPO_NAME
fi

echo "What is your github username?"
read USERNAME

curl -X DELETE -H "Authorization: token ${GITHUB_API_TOKEN}" https://api.github.com/repos/${USERNAME}/${REPO_NAME}
