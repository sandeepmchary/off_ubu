#!/bin/bash
if curl -I "https://www.google.co.in" 2>&1 | grep -w "200\|300"; then
	echo "google.co.in is up"
else 
	echo " google is down"
fi