#!/usr/bin/env bash

# Paste config here

if [ -e "$TEST_ENV" ] 
then
    echo "[+] Cleaning up old environment"
    ./clean.sh $TEST_ENV
fi

mkdir $TEST_ENV && cd $TEST_ENV
curl -o docker-compose.yml https://raw.githubusercontent.com/formbricks/formbricks/main/docker/docker-compose.yml
sed -i "/NEXTAUTH_SECRET:$/s/NEXTAUTH_SECRET:.*/NEXTAUTH_SECRET: $(openssl rand -hex 32)/" docker-compose.yml
sed -i "/ENCRYPTION_KEY:$/s/ENCRYPTION_KEY:.*/ENCRYPTION_KEY: $(openssl rand -hex 32)/" docker-compose.yml
sed -i "/CRON_SECRET:$/s/CRON_SECRET:.*/CRON_SECRET: $(openssl rand -hex 32)/" docker-compose.yml

# Add mailhog to setup
sed -i '/^services:$/a\
  mailhog:\
  \n    image: arjenz/mailhog # Copy of mailhog/MailHog to support linux/arm64\
  \n    ports:\
  \n      - 8025:8025 # web ui\
  \n      - 1025:1025 # smtp server\
' docker-compose.yml

# Configure SMTP
    sed -i "s|# MAIL_FROM:|MAIL_FROM: \"no-reply@formbricks.test.environment\"|" docker-compose.yml
    sed -i "s|# SMTP_HOST:|SMTP_HOST: \"mailhog\"|" docker-compose.yml
    sed -i "s|# SMTP_PORT:|SMTP_PORT: \"1025\"|" docker-compose.yml
    # sed -i "s|# SMTP_SECURE_ENABLED:|SMTP_SECURE_ENABLED: $smtp_secure_enabled|" docker-compose.yml
    sed -i "s|# SMTP_USER:|SMTP_USER: \"user\"|" docker-compose.yml
    sed -i "s|# SMTP_PASSWORD:|SMTP_PASSWORD: \"user\"|" docker-compose.yml

# Setup Airtable
sed -i "/.*AIRTABLE_CLIENT_ID:$/s/#\s*AIRTABLE_CLIENT_ID:.*/AIRTABLE_CLIENT_ID: $AIRTABLE_CLIENT_ID/" docker-compose.yml
# Setup google sheets
sed -i "/.*GOOGLE_SHEETS_CLIENT_ID:$/s/#\s*GOOGLE_SHEETS_CLIENT_ID:.*/GOOGLE_SHEETS_CLIENT_ID: $GOOGLE_SHEETS_CLIENT_ID/" docker-compose.yml
sed -i "/.*GOOGLE_SHEETS_CLIENT_SECRET:$/s/#\s*GOOGLE_SHEETS_CLIENT_SECRET:.*/GOOGLE_SHEETS_CLIENT_SECRET: $GOOGLE_SHEETS_CLIENT_SECRET/" docker-compose.yml
sed -i "/.*GOOGLE_SHEETS_REDIRECT_URL:$/s/#\s*GOOGLE_SHEETS_REDIRECT_URL:.*/GOOGLE_SHEETS_REDIRECT_URL: http:\/\/localhost:3000\/api\/google-sheet\/callback/" docker-compose.yml
# Setup notion
sed -i "/.*NOTION_OAUTH_CLIENT_ID:$/s/#\s*NOTION_OAUTH_CLIENT_ID:.*/NOTION_OAUTH_CLIENT_ID: $NOTION_CLIENT_ID/" docker-compose.yml
sed -i "/.*NOTION_OAUTH_CLIENT_SECRET:$/s/#\s*NOTION_OAUTH_CLIENT_SECRET:.*/NOTION_OAUTH_CLIENT_SECRET: $NOTION_CLIENT_SECRET/" docker-compose.yml
# Setup notion
sed -i "/.*SLACK_CLIENT_ID:$/s/#\s*SLACK_CLIENT_ID:.*/SLACK_CLIENT_ID: $SLACK_CLIENT_ID/" docker-compose.yml
sed -i "/.*SLACK_CLIENT_SECRET:$/s/#\s*SLACK_CLIENT_SECRET:.*/SLACK_CLIENT_SECRET: $SLACK_CLIENT_SECRET/" docker-compose.yml


docker compose up -d

