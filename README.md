# Scripts

## Prerequirements

### Github Personal Access Token

Some of these commands rely on the presence of a Github Personal Access Token (PAT) to authenticate to the Github API. That PAT is generated through the Github console > settings command, and stored in the Mac Login default keychain. Storing, retrieving and deleting the PAT is done using the keychain CLI command **security**.

Example for adding a password to keychain:
```
security add-generic-password -a <localuser> -s 'GitHub API Token Repos' -w <token>
```

Utility script **token.sh** is shorthand for the security command implementing the add, find and delete commands for the current user in the default keychain database.

### JSON Query - jq

JSON Output is formatted using the [jq command-line JSON processor](https://stedolan.github.io/jq/).

## Git Repository related

* gitdelrepo.sh - delete remote git repository
* gitlistrepos.sh - list remote git repositories
* gitmeup.sh - create local and remote git repository

## Work scripts

killMS.sh - stop and start MS Outlook and Teams, -h only stops
pxtest.sh - test the proxy settings

## Utility scripts

token.sh - add, find and delete keychain passwords
