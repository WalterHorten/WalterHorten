#!/bin/bash
# Get the Free Fire account ID from the user.
echo "Enter the Free Fire account ID:"
read id
# Get the Free Fire account information from the API.
url="https://api.freefire.com/players/{}/info".format(id)
response=$(curl -s $url)
data=$(echo $response | jq -r .)
# Print the Free Fire account information.
echo "Free Fire account information:"
echo "--------------------------------"
echo "ID: ${data.id}"
echo "Name: ${data.name}"
echo "Level: ${data.level}"
echo "Rank: ${data.rank}"
echo "K/D ratio: ${data.kdRatio}"
echo "Wins: ${data.wins}"
echo "Losses: ${data.losses}"
echo "--------------------------------"
