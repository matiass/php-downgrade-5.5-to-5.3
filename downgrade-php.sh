# upgrade system, so you can add to ignore all updates later
sudo apt-get update
sudo apt-get upgrade

# remove your php, apache, etc
sudo apt-get purge apache2 php5 libapache2-mod-php5 # add here your server packages

# change repositories to precise (with backup)
sudo sed -i.bak "s/saucy/precise/g" /etc/apt/sources.list

# update and install server packages
sudo apt-get update
sudo apt-get install apache2 php5 libapache2-mod-php5 phpmyadmin #add here packages you need and make sure you install php5.3

# change repositories back to saucy
sudo sed -i "s/precise/saucy/g" /etc/apt/sources.list

# hold packages php
dpkg --get-selections | egrep '^(apache|php)' | sed 's/install/hold/g' | sudo dpkg --set-selections

# ignore all current upgrades (package hold)
#sudo apt-mark hold `aptitude -F%p --disable-columns search ~U`