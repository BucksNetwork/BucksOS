mv bucksautostartup.sh ~/etc
echo "You need to restart BucksOS to install the update."
echo "Do you want to start BucksOS now and install the update when you exit BucksOS? y/n"
echo "$n > "
read inp
if [[( $inp == "y")]]; then 
bash start.sh
sudo apt-get install htop -y
fi

if [[( $inp == "n")]]; then 
sudo apt-get install htop -y
exit
fi

exit

