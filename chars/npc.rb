require_relative'../dice'
# this is the root class for the non-player-characters,
# all they do is have a name, and values for their spot/listen
class Npc
  attr_reader :name, :spot, :listen
  def initialize(name, skills = {})
    @name = name
    @spot = skills[:spot]
    @listen = skills[:listen]
  end

  def spots?(hide)
    true if hide < d20 + spot
  end

  def hears?(move_si)
    true if move_si < d20 + listen
  end

  def to_s
    "#{name}, Spot: #{spot} and Listen: #{listen}"
  end
end


#
# dude = Npc.new("bob",{spot:4,listen:4})
# # puts dude
# puts dude.spots?(5)
