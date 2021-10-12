#!/bin/bash
if curl -I "https://www.google.co.in" 2>&1 | grep -w "200\|301" ; then
    echo "google.co.in is up"
else
    echo "google.co.in is down"
fi
