GITHUB_API_TOKEN=$(security find-generic-password -s 'GitHub API Token Repos' -w)

curl -H "Authorization: token ${GITHUB_API_TOKEN}" -X POST https://api.github.com/user/repos -d '{"name":"blabla", "description": "blablabla"}' 
# | jq '{id,name,created_at}'
