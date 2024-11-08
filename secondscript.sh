#!/bin/bash
echo "hey"
sudo groupadd -f student

# Loop through each user and creating them with the 'student' group and /home/devops as their home directory
for USER in devops praytush dhirendra laxmi; do
	            # Creating the user with /home/devops as their home directory and 'student' as their primary group
		                    sudo useradd -m -d "/home/devops" -g student "$USER"
done

