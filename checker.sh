#!/bin/bash

URL="http://ec2-35-154-44-39.ap-south-1.compute.amazonaws.com/"

response=$(curl -s -w "%{http_code}" $URL) # getting http code from url 

http_code=$(tail -n1 <<< "$response")  # get the last line
content=$(sed '$ d' <<< "$response")   # get all but the last line which contains the status code

echo "$http_code"
echo "$content"
