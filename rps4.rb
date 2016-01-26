win = 0
losses = 0
puts "r, p, or s?"
choice = gets.chomp.downcase
3.times do 
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

end

puts win
puts losses

#### BONUS ####
  #Show history of computer and user moves at end.

