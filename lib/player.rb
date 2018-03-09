class Player

  DEFAULT_HITPOINTS = 100

  attr_reader :hitpoints

 def initialize(name, hitpoints = DEFAULT_HITPOINTS)
  @name = name
  @hitpoints = hitpoints
 end

 def name
   @name
 end

 def reduce_hitpoints(damage)
   ((@hitpoints - damage) >= 0) ? @hitpoints -= damage : hitpoints = 0
 end


end
