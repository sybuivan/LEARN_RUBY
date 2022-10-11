require_relative 'Room.rb'

class RoomB < Room

  def initialize
      super("B",300)
  end

  def display
     puts"=> Type: #{@type_248}"
     puts"=> Price Room: #{@price_248}"
  end
end