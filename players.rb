class Players 
  attr_accessor :score, :turn
  
  def initialize
    @score = 3
    @turn = false
    # puts "players were initialized"
  end
  
end

# Plan
# 1. class Players
#   attr_accessor :score, :turn
  
#   methods: 
#   1. def inititalize 
#     @score = 3 (initial for both players)
    # @turn = false (initial)