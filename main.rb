require "./players.rb";
require "./question.rb";
require "./game.rb";

# in the main file we will create instances of class Player (player1, player2)
# a varibale to hold score of each player 

def set_game
  player1 = Players.new
  player2 = Players.new
  puts player1.score

end

set_game