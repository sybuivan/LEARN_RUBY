class Student
   @name;
   @age;
   @math;
   @physical;
   @chemistry;

   def initialize(name, age, math, physical, chemistry)
     @name = name;
     @age = age;
     @math = math;
     @physical = physical;
     @chemistry = chemistry;
   end

   def name
       @name
     end
     
   def name=(name)
       @name = name
   end

   def age
       @age
     end
     
   def age=(age)
       @age = age
   end

   def math
       @math
     end
     
   def math=(math)
       @math = math
   end


   def physical
       @physical
     end
     
   def physical=(physical)
       @physical = physical
   end

   def  chemistry
       @chemistry
     end
     
   def  chemistry=( chemistry)
       @chemistry =  chemistry
   end

   def average 
       (@math + @physical + @chemistry )/3
   end

   def toString
       puts "Full name : #{name}\nage : #{age}\nAverage score: #{average};
       "
   end
end


print "Enter student name : "
name = gets;

print "Enter student age : "
age = gets;

print "Enter math score of student: "
math = gets.to_i;

print "Enter physical score of student: "
physical = gets.to_i;

print "Enter student chemistry : "
chemistry = gets.to_i;

student = Student.new(name,age,math,physical,chemistry);
print "------------------------------------\n"
student.toString