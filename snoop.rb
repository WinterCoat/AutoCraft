#This script desides what the serve will say in responce to
#Specific inputs

#get input and remove the front
input = ARGV[0]
userdidchat = 0
#parce the user
user = input[33..input.length]
if user[0] == '<'
  n = user.index('>')
  user = user[1..n-1]
  userDidChat = 1
elsif user[0] == '['
  if user.include? ":"
    n = user.index(':')
  else 
    n = user.index(']')  
  end
  user = user[1..n-1]
elsif user.include? "joined"
  user = user[0..user.rindex(" joined")-1]
else
  user = nil
end

#parse input here
if input.include? "$" and (!input.include? "[Server]" or input.include? "Server Test:" or user == "pipininja")
  #Bash Commands Proccessed here
  if (user == "pipininja")
    @cmd = input[input.index('$')+1..input.length]
    puts @cmd
  else
    puts "/say you do not have the necessary permissions"
  end
elsif !(input.include? "[Server]") or input.include? "Server Test:"
  if input.include? "linux what time is it" or input.include? "linux time" or input.include? "what time is it linux"
    time = Time.new
    puts "/say System time is: " + time.inspect
  elsif input.include? "hello linux" or input.include? "hi linux"
    puts "/say hello " + user
  elsif input.include? "what is life" or input.include? "meaning of life" or input.include? "answer to life"
    puts "/say 42"
  elsif input.include? "fuck you linux" or input.include? "fuck linux" or input.include? "linux sucks" or (input.include? "fuck" and input.include? "linux") or input.include? "fuck the server"
    puts "/say Feel My Wrath " + user
    puts "/kill " + user 
  elsif input.include? "Set own game mode to Creative"
    puts "/tell " + user + " be thoughtfull of your power"
  elsif input.include? "save me linux" or input.include? "linux save me"
    puts "/tp " + user + "-203 69 224"
  elsif input.include? "world seed" or (input.include? "linux" and input.include? "seed")
    puts "/seed"
  elsif input.include? "linux is bae"
    puts "/give " + user + " 332"
    puts "/tell " + user + "ayyeee"
  elsif input.include? "praise linux"
    puts "/tell " + user + " Worship Me"
    puts "/xp 1 " + user
  elsif input.include? "microsoft" or input.include? "windows"
    puts "/say UNIX is superiour to DOS in all aspects"
  elsif input.include? "linux what are the rules" or (input.include? "linux" and input.include? "rules") or input.include? "joined the game"
    puts "/tell " + user + " ======> Welcome: " + user + " <======"
    puts "/tell " + user + 
      " DA RULEZ:\n/tell " + user + 
      " 1. The Spawn Island (Nexus) is owned by the Ops. Feel Free to take supplies, but be nice and leave some for others. Go start your own settlement!\n/tell " + user + 
      " 2. City States Outside of Nexus will determine their own governments\n/tell " + user + 
      " 3. Diamonds are the official trading currency with 25 iron = 1 diamond"
  elsif input.include? "linux what are the comands" or input.include? "linux show commands" or (input.include? "linux" and input.include? "commands") or input.include? "linux" or input.include? "linux help"
    puts "/say try the following:\n/say => hello linux\n/say => what time is it linux\n/say => linux what are the rules\n/say => Bash commands starting with identifier $"
    elsif (userdidchat == "1") and (input.include? "drowned" or input.include? "blown up" or input.include? "blew up" or input.include? "fell" or input.include? "killed" or input.include? "slain" or input.include? "tried to swim" or input.include? "shot" or input.include? "death")
    puts "/say lol"
  else
  puts "0"
  end
else
  puts "0"
end
