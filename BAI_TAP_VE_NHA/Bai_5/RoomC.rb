require_relative 'Room.rb'

class RoomC < Room
  
  def initialize
      super("C",100)
  end

  def display
    puts"=> Type: #{@type_248}"
    puts"=> Price Room: #{@price_248}"
  end
end