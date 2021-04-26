
# 2. class Question
# attr_accessor (or attr_reader ?) :evaluate

class Question

  attr_reader :evaluate
  
  def initialize()
  
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @solution = @first_number + @second_number
    @question = "What does #{@first_number} plus #{@second_number} equal?"
    @answer = nil
    @evaluate = nil
    # puts "class Question initialized"
  end
  
  def check_answer 
  
    puts @question
    @answer = gets.chomp.to_i
    
    if @answer != @solution
      puts "You lost one life"
      @evaluate = false
    else 
      puts "You gave the correct answer"
      @evaluate = true
    end
  end
end


