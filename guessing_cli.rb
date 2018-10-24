# Code your solution here!
def computer_num
  rand(1..6)
end

def exit?
  player_selection = gets.chomp
  if player_selection == "exit"
    puts "Goodbye!"
    return true
  else
    return false
  end
end

def run_guessing_game
  puts "Welcome to Guess Game"
  puts "(Pleae note: You could exit this game anytime after the first game by enter 'exit'.)"
  loop do
    my_num = computer_num
    puts "Can you guess my number between 1 and 6?"
    you_guessed = gets.chomp.to_i
    if you_guessed > 6 || you_guessed < 1
      puts "Invalid guess, please enter the number between 1 and 6"
      next
    end

    if you_guessed == my_num
      puts "You guessed the correct number!"
      break if exit?
    else
      puts "The computer guessed #{my_num}."
      break if exit?
    end

  end
end
