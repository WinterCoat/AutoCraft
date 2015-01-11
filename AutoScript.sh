#The Great AutoScripter. Welcome to the mind of God
#java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui
#screen -S 16471.pts-0.RedCraft -X stuff 'say Linux server says hi\n'

echo 'MineCraft AutoScripting'
sleep 1
echo '...'
sleep 1
echo '...'
sleep 1
echo '...'

#For automatic resets
SEC=0
MIN=0
HOU=0

while :
do
    #increment!
    SEC=$((SEC + 1))
    
    if [ $SEC -eq 60]
    then
    #increment in case it has been a minute
	#echo 'it has been a minute'
	SEC=0
	MIN=$((MIN + 1))
    fi

    if [ $MIN -eq 60 ]
    then
    #increment in case it have been an hour
	echo 'it has been and hour'
	screen -S 16471.pts-0.RedCraft -X stuff 'say Linux Hourly Save...'
	screen -S 16471.pts-0.RedCraft -X stuff 'save-all'
	MIN=0
	HOU=$((HOU + 1))
    fi
    
    if [ $HOU -eq 24]
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
	screen -S 16471.pts-0.RedCraft -X stuff 'java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui\n'
	#reset variables
	SEC=0
	MIN=0
	HOU=0
    fi
   	
    sleep 1
done




