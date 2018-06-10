#!/bin/bash

sudo launchctl stop donotresetmypassword
sudo launchctl unload ~/Library/LaunchAgents/donotresetmypassword.plist
sudo launchctl unload /Library/LaunchAgents/donotresetmypassword.plist
sudo launchctl unload /Library/LaunchDaemons/donotresetmypassword.plist

sudo rm ~/Library/LaunchAgents/donotresetmypassword.plist
sudo rm /Library/LaunchAgents/donotresetmypassword.plist
sudo rm /Library/LaunchDaemons/donotresetmypassword.plist
sudo rm /var/.passwordLastSetTime
sudo rm /usr/local/bin/donotresetmypassword