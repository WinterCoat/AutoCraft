# Best Scripting Language Evah

command = ARGV[0]
input = ARGV[1]

case command
when "hello"
	puts "Hello #{input}!"
when "goodbye"
	puts "Goodbye #{input}!"
when "gamemode"
	if input.include? "Set own game mode"
		puts "1"
	else
		puts "0"
	end
when "praise"
	if input.include? "linux"
		puts "1"
	else
		puts "0"
	end
end

