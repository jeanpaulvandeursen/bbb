# Scripts

## Prerequirements

### Github Personal Access Token

All these commands rely on the presence of a Github Personal Access Token (PAT) to authenticate to the Github API. That PAT is generated through the Github console > settings command, and stored in the Mac Login default keychain. Storing, retrieving and deleting the PAT is done using the keychain CLI command **security**.

### JSON Query - jq

JSON Output is formatted using the [jq command-line JSON processor](https://stedolan.github.io/jq/).

## Git Repository related

* gitdelrepo.sh - delete remote git repository
* gitlistrepos.sh - list remote git repositories
* gitmeup.sh - create local and remote git repository

## Other scripts

killMS.sh - stop and start MS Outlook and Teams, -h only stops
pxtest.sh - test the proxy settings
