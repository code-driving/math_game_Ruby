class Game 

  attr_accessor :player1, :player2, :tracker
  
  def initialize(player1, player2)
  
    @player1 = player1
    @player2 = player2
    @tracker = nil

  end
  
  def set_current_player_turn
    if @player1.turn == @player2.turn && @player1.turn == false
      @player1.turn = true
    elsif @player1.turn == true
      @player1.turn = false
      @player2.turn = true
    else @player1.turn == true
      @player2.turn = false
    end
  end
  
  def loose_life

    if @tracker == false && @player1.turn == true
      @player1.score -= 1
    elsif @tracker == false && @player2.turn == true
      @player2.score -= 1
    end
    
  end


  def end_game
    
    loose_life
    
    if @player1.score == 0
      puts "Player 1 lost the game. Player 2 won the game with the score #{@player2.score}/3."
      # return
    elsif 
      @player2.score == 0
      puts "Player 2 lost the game. Player 1 won the game with the score #{@player1.score}/3."
      # return
    else
      puts "SCORE: PLAYER 1: #{@player1.score}/3 vs PLAYER 2: #{@player2.score}/3 " 
    end
  end

end

