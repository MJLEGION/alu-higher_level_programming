#!/bin/bash
# Takes in a URL, sends a GET request to the URL, and displays the body of the response

url=$1
response=$(curl -sI $url)
status_code=$(echo "$response" | grep HTTP | awk '{print $2}')

if [ $status_code -eq 200 ]; then
    curl -sL $url
else
    echo "Status code: $status_code"
fi
