secret_number = rand(1..100)

puts "I'm thinking of a number between 1 and 100"
puts "Can you guess what it is?"

loop do
  print "Enter your guess: "
  guess = gets.chomp.to_i

  if guess == secret_number
    puts "You got it! The number was #{secret_number}."
    break
  elsif guess > secret_number
    puts "Too high. Try again."
  else
    puts "Too low. Try again."
  end
end
