echo "Name: "
read n 
echo "Password: "
read p
if [[( $n == "root" && $p == "0000")]]; then 
bash ~/BucksOS/BucksOS/run.sh
exit
else 
echo "Wrong password or username..."
fi

