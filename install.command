#!/bin/sh

if [[ ! -d "~/Library/LaunchAgents" ]]; then
	mkdir -p ~/Library/LaunchAgents
fi

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

sudo cp $SCRIPTPATH/donotresetmypassword.plist ~/Library/LaunchAgents
sudo cp $SCRIPTPATH/donotresetmypassword.plist /Library/LaunchAgents
sudo cp $SCRIPTPATH/donotresetmypassword.plist /Library/LaunchDaemons

sudo chown root:wheel /Library/LaunchDaemons/donotresetmypassword.plist
sudo chmod 0644 /Library/LaunchDaemons/donotresetmypassword.plist

sudo chown root:wheel /Library/LaunchAgents/donotresetmypassword.plist
sudo chmod 0644 /Library/LaunchAgents/donotresetmypassword.plist

# sudo chown $(whoami):staff ~/Library/LaunchAgents/donotresetmypassword.plist
sudo chown root:wheel ~/Library/LaunchAgents/donotresetmypassword.plist
sudo chmod 0644 ~/Library/LaunchAgents/donotresetmypassword.plist


# Copy script 
sudo chmod +x $SCRIPTPATH/donotresetmypassword
sudo cp $SCRIPTPATH/donotresetmypassword /usr/local/bin


sudo launchctl load ~/Library/LaunchAgents/donotresetmypassword.plist
sudo launchctl load /Library/LaunchAgents/donotresetmypassword.plist
sudo launchctl load /Library/LaunchDaemons/donotresetmypassword.plist