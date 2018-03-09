require_relative 'player.rb'

class Game

  def attack(player, damage)
    player.reduce_hitpoints(damage)
  end

end
