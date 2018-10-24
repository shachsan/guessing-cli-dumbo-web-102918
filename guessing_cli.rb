# Language: Ruby, Level: Level 3

require 'pry'
# Language: Ruby, Level: Level 3
# # Code your solution here!
def computer_num
  return rand(1..6)
end
#
def exit?
  player_selection = gets.chomp
  if player_selection == "exit"
    puts "Goodbye!"
    return true
  else
    return false
  end
end
#
def run_guessing_game
  puts "Welcome to Guess Game"
  puts "(Pleae note: You could exit this game after finishing a started game by enter 'exit'.)"
  you_guessed=gets.chomp

  while you_guessed!="exit"
    my_num = computer_num
    puts "Can you guess my number between 1 and 6?"
    you_guessed = gets.chomp
    #
    # if you_guessed == "exit"
    #   break
    # end

    if you_guessed.to_i > 6 || you_guessed.to_i < 1
      puts "Invalid guess, please enter the number between 1 and 6"
      next
    end

    if you_guessed.to_i == my_num
      puts "You guessed the correct number!"
      # player_selection = gets.strip
      # if player_selection == "exit"
      #   puts "Goodbye!"
      #   break
      # end
      break if exit?
    else
      puts "The computer guessed #{my_num}."
      # player_selection = gets.strip
      # if player_selection == "exit"
      #   puts "Goodbye!"
      #   break
      # end
      break if exit?
    end

  end
end
