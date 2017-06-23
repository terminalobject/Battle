
class Game
  attr_reader :player1, :player2, :turn

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2, turn = [true,false].sample)
    @player1 = player1
    @player2 = player2
    @turn = turn
  end

  def attack
    @turn ? player2.reduce_hp : player1.reduce_hp
  end

  def switch_turn
    @turn == true ? @turn = false : @turn = true
  end
end
