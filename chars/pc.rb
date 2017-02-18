require '../dice'
require File.expand_path('../chars/npc',__FILE__)
class PC < Npc

end

p=PC.new("bob",{spot:4,listen:6})
puts p