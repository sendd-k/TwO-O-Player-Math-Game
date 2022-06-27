class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  def start
    new_turn
  end

  def score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def game_over(player)
    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end

  def check_score
    if @player1.check_lives
      game_over(@player2)
    elsif @player2.check_lives
      game_over(@player1)
    end
  end

  $turn = 1

  def new_turn
    if $turn.odd?
      @player1.question
      score
      check_score
      puts '---------NEW-TURN---------'
    elsif $turn.even?
      @player2.question
      score
      check_score
      puts '---------NEW-TURN---------'
    end
    $turn += 1
    new_turn
  end
end