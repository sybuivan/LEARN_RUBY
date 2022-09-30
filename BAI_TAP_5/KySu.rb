require_relative  'CanBo'
class KySu < CanBo
   @branch;
   attr_accessor :branch;
   def initialize(name, age, gender, address, branch)
      super(name, age, gender, address)
      @branch = branch
   end

   def initialize
   end

   def showInformation
      super
      puts "Branch #{@branch}"
   end

   def input
      super
      puts "Branch #{branch}"
      @branch = branch
   end
end