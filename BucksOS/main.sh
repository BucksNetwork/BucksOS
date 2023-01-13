echo "Name: "
read n 
echo "Password: "
read p
if [[( $n == "root" && $p == "0000")]]; then 
bash run.sh
else 
echo "Wrong password or username..."
fi

