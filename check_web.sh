#!/bin/bash

PORT=80
INDEX_FILE="/var/www/html/index.html"

 
if ! nc -z localhost $PORT; then
    exit 1
fi

 
if [ ! -f "$INDEX_FILE" ]; then
    exit 1
fi

exit 0
