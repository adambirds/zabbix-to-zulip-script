#!/bin/bash

webhook_url="$1"

# Build our JSON payload and send it as a POST request to the Zulip incoming web-hook URL
payload="$3"
echo $payload > /tmp/payload.txt
/usr/bin/curl -m 5 --data "$payload" "${webhook_url}"
