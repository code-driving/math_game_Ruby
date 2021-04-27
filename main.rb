require "./players.rb";
require "./question.rb";
require "./game.rb";

def set_game

  player1 = Players.new
  player2 = Players.new
  # puts player1.score
  game = Game.new(player1, player2)

  while player1.score > 0 && player2.score > 0
    game.set_current_player_turn()
  
  question = Question.new
  
  game.tracker = question.check_answer 

  game.end_game
  
  end
end

set_game


