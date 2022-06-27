class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def wrong
    @lives -= 1
  end

  def check_lives
    @lives == 0
  end

  def question
    question = Question.new
    question.question(name)
    print '> '
    @answer = $stdin.gets.chomp
    if question.answer(@answer.to_i)
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      wrong
    end
  end
end