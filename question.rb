class Question

  attr_reader :evaluator
  
  def initialize()
  
    @first_number = rand(1..20)
    @second_number = rand(1..20)
    @solution = @first_number + @second_number
    @question = "What does #{@first_number} plus #{@second_number} equal?"
    @answer = nil
    @evaluator = nil
    # puts "class Question initialized"
  end
  
  def check_answer 
  
    puts @question
    @answer = gets.chomp.to_i
    
    if @answer != @solution
      puts "You lost one life"
      @evaluator = false
    else 
      puts "You gave the correct answer"
      @evaluator = true
    end
    @evaluator
  end
end



