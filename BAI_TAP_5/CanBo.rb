class CanBo
   @name;
   @age;
   @gender;
   @address;
   
   # def initialize(name, age, gender, address) 
   #    @name = name;
   #    @age = age;
   #    @gender = gender;
   #    @address = address;
   # end

   def initialize
   end

   attr_accessor :name, :age, :gender, :address;

   def input 
      print "Nhap ten:"
      @name = gets
      print "Age:"
      @age = gets
      print "Gender:"
      @gender = gets
      print "Address:" 
      @address = gets
   end

   def showInformation
      puts "\nName : #{@name}\n Age : #{@age}\n Gender : #{@gender}\n Address : #{@address}"
   end
end

