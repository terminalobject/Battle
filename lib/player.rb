class Player
  attr_reader :player_name, :health
  MAX_HP = 100

  def initialize(player_name, health = MAX_HP)
    @player_name = player_name
    @health = health
  end

  def reduce_hp
    @health -= 10
  end

  def dead?
    health <= 0
  end
end
