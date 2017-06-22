class Player
  attr_reader :player_name, :health
  DEFAULT_HP = 100
  def initialize(player_name, health = DEFAULT_HP)
    @player_name = player_name
    @health = health
  end

  def take_hit
    @health -= 10
  end

  def attack(player)
    player.take_hit
  end
end
