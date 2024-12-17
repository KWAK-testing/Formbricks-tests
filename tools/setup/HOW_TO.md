# How to use setup.sh to spawn test environment

## Prerequisites
- OS that can run .sh files (or adapt sh script to your operating system) for windows recommend WSL
- curl installed
- docker and docker compose installed

## Start
Below `# Paste config here` paste script configs looking something like this:

```sh
TEST_ENV=.formbricks-test-environment

AIRTABLE_CLIENT_ID=
GOOGLE_SHEETS_CLIENT_ID=
GOOGLE_SHEETS_CLIENT_SECRET=
NOTION_CLIENT_ID=
NOTION_CLIENT_SECRET=
SLACK_CLIENT_ID=
SLACK_CLIENT_SECRET=
```

`./setup.sh` - spins up a multi container docker compose app

`./clean.sh .formbricks-test-environment` - removes docker containers and related files