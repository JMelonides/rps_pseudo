win = 0
losses = 0
history = []
3.times do
puts "r, p, or s?"
choice = gets.chomp.downcase 
computer = ["r", "p", "s"].sample
case [choice, computer] 
  when ["p", "r"], ["s", "p"],["r", "s"] 
    puts "you win"
    win = win + 1
  when ["r", "r"], ["s", "s"],["p", "p"]    
    puts "tie"
  when ["s", "r"], ["p", "s"],["r", "p"]    
    puts "you lose"
    losses = losses + 1
end
history << [choice, computer]
end

puts win
puts losses

if win > losses
	puts "you won"
elsif win == losses	
	puts "you tied"
elsif win < losses
  puts "you lost"
end

puts " "
print history


