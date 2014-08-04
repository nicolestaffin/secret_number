puts "Welcome to this game thing."
puts "What's your name?"
name = gets.chomp.capitalize 
puts "Welcome, #{name}."

secret_number = 7 
puts "What is your first guess?"
guess = gets.chomp.to_i


def find_pluralization(num, singular, pluralize)
	if num > 1
		pluralize
	else
		singular
	end
end

2.downto(0) do |attempts|
	

	if guess < secret_number 
		puts "Try again, maybe something higher?"
	elsif guess > secret_number 
		puts "Try again, maybe something lower?"
	else 
		puts "You won. Woo."
		break
	end 

	puts "You have #{attempts} #{find_pluralization(attempts,'guess','guesses')} left"
	puts "Please guess again."
	guess = gets.chomp.to_i
end 


