#cleans the BASH output so that it can be send to the MC terminal in a friendly way

ret="/say "
#messy = 'screen -S 27419.Temp -X stuff tail -n -5 /home/minecraft/'

messy=ARGV[0]

clean = messy.split("\n")

clean.each {
  |str|
  ret = ret + "/say " 
}

puts ret
