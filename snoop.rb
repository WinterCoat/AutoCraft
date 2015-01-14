#This script desides what the serve will say in responce to
#Specific inputs

#get input and remove the front
input = ARGV[0]

#parce the user
n = input.index('<')
m = input.index('>')
user = nil
if (n and m) != nil
  user = ARGV[0][n+1..m-1]
end
if user == nil
  user = input[34..input.rindex(':')-1]
end


if !input.include? "[Server]" or input.include? "Server Test:"
  
  if input.include? "linux what time is it" or input.include? "linux time" or input.include? "what time is it linux"
    time = Time.new
    puts "/say System time is: " + time.inspect
  elsif input.include? "hello linux" or input.include? "hi linux"
    puts "/say hello " + user
  elsif input.include? "what is life" or input.include? "meaning of life" or input.include? "answer to life"
    puts "/say 42"
  elsif input.include? "fuck you linux" or input.include? "fuck linux" or input.include? "linux sucks"
    puts "/say fuck you " + user
    puts "/kick " + user
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
  elsif input.include? "microsoft"
    puts "UNIX is superiour to DOS in all aspects"
  elsif input.include? "linux what are the rules" or (input.include? "linux" and input.include? "rules") or input.include? "joined the game"
    puts "/say DA RULEZ:\n/say 1. The Spawn Island (Nexus) is owned by the Ops. Feel Free to take supplies, but be nice and leave some for others. Go start your own settlement!\n/say 2. City States Outside of Nexus will determine their own governments\n/say 3. Diamonds are the official trading currency with 25 iron = 1 diamond"
  elsif input.include? "linux what are the comands" or input.include? "linux show commands" or (input.include? "linux" and input.include? "commands") or input.include? "linux"
    puts "/say try the following:\n/say => hello linux\n/say => what time is it linux\n/say => linux what are the rules\n/say => Bash commands starting with identifier $"
  else
    puts "0"
  end
elsif input.include? "$"
  #Bash Commands Proccessed here

else
  puts "0"
end
