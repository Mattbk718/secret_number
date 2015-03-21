###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret
# number game. In this game players have three tries to guess a secret number
# between 1 and 10.
#
# Here are some guidelines to building your game:
#
#   Intros
#   - Welcome the player to your game. Let them know who created the game.
#   - Ask for the player's name then personally greet them by printing to the
#     screen, "Hi player_name!"
#   - Any good game will communicate the rules. Let the player know they must
#     guess a number between 1 and 10 and that they only have 3 tries to do so.
#
#   Functionality:
#     - Manually specify the secret number in a variable. Choose a random
#       number between 1 and 10.
#     - Ask the user for their guess.
#     - Verify if they were correct. If the player guesses correctly they win
#       the game, they should be congratulated and the game should end.
#     - If they guess incorrectly, give the player some direction. If they
#       guess too high let them know, if they guess too low, let them know.
#     - Don't forget to let your players know how many guesses they have left.
#       Your game should say something like:
#         "You have X guesses before the game is over enter a another number"
#     - If they don't guess correctly after 3 tries, display that the player
#       lost and that the game is over. Be nice and let them know what the
#       `secret_number` was.
#
###############################################################################

secret_number = 3

def get_input
  gets.strip
end


def guess?(number,secret_number) 
  if number > secret_number
     "too high"
  elsif number  < secret_number
      "too low"
  elsif number == secret_number
    "Correct!"
  end

end

puts "Welcome player, this game was created by matt zeltser"
puts "What is YOUR name?"
player_name = get_input
puts "#{player_name}, you have 3 attempts to pick a number between 1 and 10!"
            
times_to_loop = 3
i = 0
while i < times_to_loop
  guessed_number = get_input.to_i
  puts "The number you guessed is #{guessed_number}. The number you picked is #{guess?(guessed_number,secret_number)}!"
  break if guessed_number == secret_number
  puts " This is your #{i + 1} turn, try again."
  i +=1
end