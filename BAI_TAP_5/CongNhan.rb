require_relative  'CanBo'
class CongNhan < CanBo 
   @level;
   attr_accessor :level;

   def initialize
   end

   # def initialize(name, age, gender, address, level)
   #    super(name, age, gender, address)
   #    @level = level
   # end

   def showInformation
      super
      puts "Level #{@level}"
   end

   def input
      super
      puts "Level:"
      @level = gets
   end
end