mv bucksautostartup.sh ~/etc
sudo apt-get install htop -y
echo "$n > "
read inp
echo "You need to restart BucksOS to install the update."
echo "Do you want to start BucksOS now and install the update when you exit BucksOS? y/n"
if [[( $inp == "y")]]; then 
bash start.sh
fi

if [[( $inp == "n")]]; then 
exit
fi

exit

