GITHUB_API_TOKEN=`token.sh get github`

if [[ $? -ne 0 ]]
then
        echo "No token 'github' found"
        exit 0
fi

curl -H "Authorization: token ${GITHUB_API_TOKEN}" https://api.github.com/users/jeanpaulvandeursen/repos | jq '.[] | .name'
