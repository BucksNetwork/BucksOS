clear
echo "Name: "
read n
clear
echo "Password: "
read p
if [[( $n == "root" && $p == "0000")]]; then 
touch ~/BucksOS/BucksOS/logged.txt
bash ~/BucksOS/BucksOS/run.sh
exit
else 
echo "Wrong password or username..."
fi
