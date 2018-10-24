
def run_guessing_game

  you_guessed = ""

  while true
    my_num = rand(1..6)
    puts "Guess a number between 1 and 6."
    you_guessed = gets.chomp
    #
    if you_guessed == "exit"
      puts "Goodbye!"
      break
    end

    if you_guessed.to_i > 6 || you_guessed.to_i < 1
      puts "Invalid guess, please enter the number between 1 and 6"
      next
    end

    if you_guessed.to_i == my_num
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{my_num}."
    end

  end
end
