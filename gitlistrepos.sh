GITHUB_API_TOKEN=$(security find-generic-password -s 'GitHub API Token Repos' -w)

curl -H "Authorization: token ${GITHUB_API_TOKEN}" https://api.github.com/users/jeanpaulvandeursen/repos | jq '.[] | .name'
