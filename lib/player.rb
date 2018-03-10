class Player

  DEFAULT_HITPOINTS = 60

  attr_reader :hitpoints, :name

 def initialize(name, hitpoints = DEFAULT_HITPOINTS)
  @name = name
  @hitpoints = hitpoints
 end
 
 def reduce_hitpoints
   @hitpoints -= 10
 end


end
