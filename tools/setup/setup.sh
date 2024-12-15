#!/usr/bin/env bash

TEST_ENV=.formbricks-test-environment

if [ -e $TEST_ENV ] 
then
    rm -rf $TEST_ENV
fi

mkdir $TEST_ENV && cd $TEST_ENV
curl -o docker-compose.yml https://raw.githubusercontent.com/formbricks/formbricks/main/docker/docker-compose.yml
sed -i "/NEXTAUTH_SECRET:$/s/NEXTAUTH_SECRET:.*/NEXTAUTH_SECRET: $(openssl rand -hex 32)/" docker-compose.yml
sed -i "/ENCRYPTION_KEY:$/s/ENCRYPTION_KEY:.*/ENCRYPTION_KEY: $(openssl rand -hex 32)/" docker-compose.yml
sed -i "/CRON_SECRET:$/s/CRON_SECRET:.*/CRON_SECRET: $(openssl rand -hex 32)/" docker-compose.yml

docker compose up -d

