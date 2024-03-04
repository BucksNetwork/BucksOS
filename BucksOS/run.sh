echo "Loading user data..."
n='root'

if test -f 'logged.txt'; then
clear
echo 'Loading...'
rm ~/BucksOS/BucksOS/logged.txt
else
echo 'You are not logged in, run start.sh'
sleep 5
exit
fi 


clear
echo "Welcome $n"
sleep 2
echo "Loading textures..."
## underlined
unl='\e[4m'
resunl='\e[24m'

## bold
bld='\e[1m'
resbld='\e[21m'

## reset all attributes 
resat='\e[0m'

## blink
blk='\e[5m'
resblk='\e[25m'



##ASCII art logo loading
 logo=' 
██████  ██    ██  ██████ ██   ██ ███████      ██████  ███████ 
██   ██ ██    ██ ██      ██  ██  ██          ██    ██ ██      
██████  ██    ██ ██      █████   ███████     ██    ██ ███████ 
██   ██ ██    ██ ██      ██  ██       ██     ██    ██      ██ 
██████   ██████   ██████ ██   ██ ███████      ██████  ███████  
                 2023-2024 © BucksNetwork 
 '
 logo1='
██████╗ ██╗   ██╗ ██████╗██╗  ██╗███████╗     ██████╗ ███████╗
██╔══██╗██║   ██║██╔════╝██║ ██╔╝██╔════╝    ██╔═══██╗██╔════╝
██████╔╝██║   ██║██║     █████╔╝ ███████╗    ██║   ██║███████╗
██╔══██╗██║   ██║██║     ██╔═██╗ ╚════██║    ██║   ██║╚════██║
██████╔╝╚██████╔╝╚██████╗██║  ██╗███████║    ╚██████╔╝███████║
╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝     ╚═════╝ ╚══════╝
                  2023-2024 © BucksNetwork 
 '                                          

clear



for (( counter=1000; counter>0; counter--))
do

##ASCII art 
echo -e "$logo"

echo "$n > "
read inp
if [[( $inp == "exit")]]; then 
clear 
echo "Exit..."
sleep 3
clear
exit 
fi 
if [[( $inp == "logout")]]; then 
clear
echo -e "${bld}Logging out...${resat}"
sleep 2
echo -e "(|)"
clear
echo -e "(/)"
clear 
echo -e "(-)"
clear
echo -e "(\)"
sleep 3
clear 
bash ~/BucksOS/BucksOS/restart.sh 
fi 

if [[( $inp == "help")]]; then 
clear
echo "help:"
echo -e "  help      ${unl}shows this message${resat}"
echo -e "  ?         ${unl}shows this message${resat}"
echo -e "  update    ${unl}updates the system${resat}"
echo -e "  clear     ${unl}clears all text in the prompt${resat}"
echo -e "  logo      ${unl}shows all logo's${resat}"
echo -e "  htop      ${unl}shows stats about programs running on your computer${resat}"
echo -e "  rm <file> ${unl}removes the mentioned file${resat}"
echo -e "  mk <name> ${unl}creates a file with the given name${resat}"
echo -e "  ls        ${unl}shows all main files${resat}"
fi

if [[( $inp == "clear")]]; then 
clear 
fi 

if [[( $inp == "logo")]]; then 
bash logos.sh 
fi 

if [[( $inp == "update")]]; then 
echo "BucksOS will be updated, this can take up to 10 minutes, please don't exit the system while updating."
sleep 5
clear
bash updateprep.sh
exit
fi

if [[( $inp == "?")]]; then 
clear
echo "help:"
echo -e "  help      ${unl}shows this message${resat}"
echo -e "  ?         ${unl}shows this message${resat}"
echo -e "  update    ${unl}updates the system${resat}"
echo -e "  clear     ${unl}clears all text in the prompt${resat}"
echo -e "  logo      ${unl}shows all logo's${resat}"
echo -e "  htop      ${unl}shows stats about programs running on your computer${resat}"
echo -e "  rm <file> ${unl}removes the mentioned file${resat}"
echo -e "  mk <name> ${unl}creates a file with the given name${resat}"
echo -e "  ls        ${unl}shows all main files${resat}"
fi 

if [[( $inp == "htop")]]; then 
clear
htop
fi 

if [[( $inp == "rm $1")]]; then
read $1
rm $1
fi

if [[( $inp == "mk $1")]]; then 
read $1
touch $1
fi

if [[( $inp == "ls")]]; then
bash ls
fi

done 
