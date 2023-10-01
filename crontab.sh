#!/bin/bash

# Final Step
# Create a crontab syntax to run the script at 07:00 AM Daily
cron_command="00 07 * * * bash /mnt/d/Final_project.sh"

echo "$cron_command" | crontab -
