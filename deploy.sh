#!/bin/bash
# Script for deploying a jekyll build to AWS

# Push the build using the s3_website.yml settings
bundle exec s3_website push --headless

# Clear the Cloudflare cache
curl https://www.cloudflare.com/api_json.html \
    -d 'a=fpurge_ts' \
    -d "tkn=$cloudflare_token" \
    -d "email=$cloudflare_email" \
    -d "z=$cloudflare_zone" \
    -d 'v=1'
