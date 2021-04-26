require "./players.rb";
require "./question.rb";
require "./game.rb";

def set_game
  player1 = Players.new
  player2 = Players.new
  # puts player1.score

  q = Question.new
  q.check_answer()
  
end

set_game

