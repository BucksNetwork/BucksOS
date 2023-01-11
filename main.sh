echo "Name: "
read n 
echo "Password: "
read p
if [[( $n == "Test_user" && $p == "1234")]]; then 
bash run.sh
else 
echo "Wrong password or username..."
fi

