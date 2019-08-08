class Player
  attr_reader :name
  attr_accessor :hp

  DEFAULT_HIT_POINTS = 60

  def initialize(name)
    @name = name
    @hp = DEFAULT_HIT_POINTS
  end

  def receive_damage
    @hp -= 10
  end

  def attack(player)
    player.receive_damage
  end

end