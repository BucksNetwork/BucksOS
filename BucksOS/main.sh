clear
echo "Name: "
read n
clear
echo "Password: "
read p
if [[( $n == "root" && $p == "0000")]]; then 
bash sed -i 'logged=true' var.txt
bash ~/BucksOS/BucksOS/run.sh
exit
else 
echo "Wrong password or username..."
fi
