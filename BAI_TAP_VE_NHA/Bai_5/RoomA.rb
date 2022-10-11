require_relative 'Room.rb'

class RoomA < Room

   def initialize
      super("A",500)
   end

   def display
       puts"=> Type: #{@type_248}"
       puts"=> Price Room: #{@price_248}"
   end
end