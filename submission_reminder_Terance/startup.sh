#!/bin/bash
source ./config/config.env

echo "Starting the reminder application for assignment: $ASSIGNMENT"

./app/reminder.sh "$ASSIGNMENT"
