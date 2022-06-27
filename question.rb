class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def question(player)
    puts "#{player}: What does #{@num1} + #{@num2} equal?"
  end

  def answer(answer)
    @sum == answer
  end
end