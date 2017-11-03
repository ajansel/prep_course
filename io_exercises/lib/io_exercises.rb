# I/O Exercises
#
# * Write a `guessing_game` method. The computer should choose a number between
#   1 and 100. Prompt the user to `guess a number`. Each time through a play loop,
#   get a guess from the user. Print the number guessed and whether it was `too
#   high` or `too low`. Track the number of guesses the player takes. When the
#   player guesses the number, print out what the number was and how many guesses
#   the player needed.
# * Write a program that prompts the user for a file name, reads that file,
#   shuffles the lines, and saves it to the file "{input_name}-shuffled.txt". You
#   could create a random number using the Random class, or you could use the
#   `shuffle` method in array.

def guessing_game
  computer_random = rand(1..100)
  user_guess = -1 #Initializing a variable so that we can enter the loop
  num_guesses = 0

  until user_guess == computer_random
    puts "guess a number"
    user_guess = gets.chomp.to_i
    num_guesses += 1

    if user_guess > computer_random
      puts "#{user_guess} is too high"
    else
      puts "#{user_guess} is too low"
    end
  end

  puts "Correct! The number was: #{computer_random} and it took #{num_guesses} guesses"
end

def file_shuffler
  puts "Enter a file name:"
  name = gets.chomp

  contents = File.readlines(name)
  contents.shuffle!

  File.open("#{name}-shuffled.txt", "w") do |f|
    f.puts contents
  end
end
