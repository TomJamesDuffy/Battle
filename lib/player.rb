class Player

  DEFAULT_HITPOINTS = 60 

  attr_reader :hitpoints

 def initialize(name, hitpoints = DEFAULT_HITPOINTS)
  @name = name
  @hitpoints = hitpoints
 end
 
 def attack(player)
   player.reduce_hitpoints
 end


 def name
   @name
 end

 def reduce_hitpoints
   @hitpoints -= 10
 end


end
