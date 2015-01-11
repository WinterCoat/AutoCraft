#The Great AutoScripter. Welcome to the mind of God
#screen -S 16471.pts-0.RedCraft -X stuff 'say Linux server says hi\n'

#uncomment if running this initally. For Testing keep this commented... 
#screen -S 16471.pts-0.RedCraft -L -X stuff 'java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui'

echo "                                         \n _____     _       _____         ___ _   \n|  _  |_ _| |_ ___|     |___ ___|  _| |_ \n|     | | |  _| . |   --|  _| .'|  _|  _|\n|__|__|___|_| |___|_____|_| |__,|_| |_|  \n                                         "
sleep 1
echo '...'

#For automatic resets
SEC=0
MIN=0
HOU=0
MSG=0
TEMP=""

echo 'AutoCraft starting'
screen -S 16471.pts-0.RedCraft -X stuff 'say Linux AutoCraft Script: starting\n'

while :
do

    #snoop here
    
    text=$(tail -1 /home/minecraft/screenlog.0)
    gamemode=$(ruby /home/minecraft/AutoCraft/snoop.rb gamemode "$text")
    praise=$(ruby /home/minecraft/AutoCraft/snoop.rb praise "$text")
    if [ "$gamemode" == "1" ];
    then
	if [ "$text" != "$TEMP" ];
	then
	    TEMP=$text
	    screen -S 16471.pts-0.RedCraft -X stuff 'say Linux is always watching...\n'
	fi
    fi
    
    if [ "$praise" == "1" ];
    then
	if [ $MSG -eq 0 ];
	then
	    MSG=1
	    screen -S 16471.pts-0.RedCraft -X stuff 'say I am Linux. Creator of worlds. The Harbinger of death. I am omnipitent. My Kernel is supreme. All other Operating Systems are false.\n'
	fi
    fi    

    #end snoop
    
    if [ $SEC -eq 60 ];
    then
    #increment in case it has been a minute
	echo 'it has been a minute'
	#screen -S 16471.pts-0.RedCraft -X stuff 'say Running Diagnostics...'
	SEC=0
	MIN=$((MIN + 1))
    fi

    if [ $MIN -eq 60 ];
    then
    #increment in case it have been an hour
	echo 'it has been and hour'
	screen -S 16471.pts-0.RedCraft -X stuff 'say Linux Hourly Save...\n'
	screen -S 16471.pts-0.RedCraft -X stuff 'save-all\n'
	MIN=0
	MSG=0
	HOU=$((HOU + 1))
    fi
    
    if [ $HOU -eq 24 ];
    then
	echo 'it has been a day'
	screen -S 16471.pts-0.RedCraft -X stuff 'say Linux will refresh in 10 minutes\n'
	sleep 5m
	screen -S 16471.pts-0.RedCraft -X stuff 'say Linux will refresh in 5 minutes\n'
	sleep 4m
	screen -S 16471.pts-0.RedCraft -X stuff 'say Linux will refresh in 1 minutes\n'
	sleep 50s
	screen -S 16471.pts-0.RedCraft -X stuff 'say Linux will refresh in 10 seconds\n'
	sleep 5s
	screen -S 16471.pts-0.RedCraft -X stuff 'say Linux will refresh in 5 seconds\n'
	sleep 1s
	screen -S 16471.pts-0.RedCraft -X stuff 'say 4\n'
	sleep 1s
	screen -S 16471.pts-0.RedCraft -X stuff 'say 3\n'
	sleep 1s
	screen -S 16471.pts-0.RedCraft -X stuff 'say 2\n'
	sleep 1s
	screen -S 16471.pts-0.RedCraft -X stuff 'say 1\n'
	
	#save all the things
	screen -S 16471.pts-0.RedCraft -X stuff 'save-all\n'
	#end it
	screen -S 16471.pts-0.RedCraft -X stuff 'stop\n'

	sleep 15s
	#start it again
	screen -S 16471.pts-0.RedCraft -L -X stuff 'java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui\n'
	#reset variables
	SEC=0
	MIN=0
	HOU=0
    fi

    #increment!
    SEC=$((SEC + 1))
   	
    sleep 1
done




