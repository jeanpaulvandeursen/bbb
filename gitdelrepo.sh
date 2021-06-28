GITHUB_API_TOKEN=$(security find-generic-password -s 'GitHub API Token Repos' -w)

echo "What repo do you want to delete?"
read REPO_NAME

echo "What is your github username?"
read USERNAME

curl -X DELETE -H "Authorization: token ${GITHUB_API_TOKEN}" https://api.github.com/repos/${USERNAME}/${REPO_NAME}
