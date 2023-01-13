echo "Loading user data..."
n='root'

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
 
 '
 logo1='
██████╗ ██╗   ██╗ ██████╗██╗  ██╗███████╗     ██████╗ ███████╗
██╔══██╗██║   ██║██╔════╝██║ ██╔╝██╔════╝    ██╔═══██╗██╔════╝
██████╔╝██║   ██║██║     █████╔╝ ███████╗    ██║   ██║███████╗
██╔══██╗██║   ██║██║     ██╔═██╗ ╚════██║    ██║   ██║╚════██║
██████╔╝╚██████╔╝╚██████╗██║  ██╗███████║    ╚██████╔╝███████║
╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝     ╚═════╝ ╚══════╝
 
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
bash restart.sh 
fi 

if [[( $inp == "help")]]; then 
echo "We are working on this command, come back later."
fi

if [[( $inp == "clear")]]; then 
clear 
fi 

if [[( $inp == "logo")]]; then 
bash logos.sh 
fi 

done 