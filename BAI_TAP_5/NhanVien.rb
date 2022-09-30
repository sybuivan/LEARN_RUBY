require_relative 'CanBo'
class NhanVien < CanBo
   @job;
   attr_accessor :job;
   def initialize (name, age, gender, address, job)
      super(name, age, gender, address)
      @job = job
   end

   def initialize
   end

   def showInformation
      super
      puts "Job #{@job}"
   end

   def input
      super
      puts "Job #{job}"
      @job = gets
   end
end