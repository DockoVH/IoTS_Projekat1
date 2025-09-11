#!/usr/bin/env bash

echo "Test: " $HEALTH

if [[ $HEALTH = "" ]]; then
	exit 2
fi
exit 0
