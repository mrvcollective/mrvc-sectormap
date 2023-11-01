#!/bin/bash 
MY_URL=http://www.mrvcollective.org

curl -I -X OPTIONS \
  -H "Origin: ${MY_URL}" \
  -H 'Access-Control-Request-Method: GET' \
  "${MY_URL}/index.html" 2>&1 | grep -i 'Access-Control-Allow-Origin'
