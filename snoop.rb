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

if input.include? "linux what time is it"
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
else
  puts "0"
end
