GITHUB_API_TOKEN=`token.sh get github`

if [[ $? -ne 0 ]]
then
        echo "No token 'github' found"
        exit 0
fi

HTTP_STATUS_CODE=`curl -o /dev/null -s -w "%{http_code}\n" -H "Authorization: token $GITHUB_API_TOKEN" https://api.github.com/users/jeanpaulvandeursen/repos`

if [[ $HTTP_STATUS_CODE -ne 200 ]]
then
   echo "no access"
else
   echo "access allowed"
fi
