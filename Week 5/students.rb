class Mans
   @name;
   @gender;
   @height;
   @weight;
   @email;
   @phone;

   def initialize(name, gender, height, weight, email, phone)
      @name = name;
      @gender = gender;
      @height = height;
      @weight = weight;
      @email = email;
      @phone = phone
   end

   attr_accessor :name, :gender, :height, :weight, :email, :phone

   def showInformation
      puts "\nName : #{name}\nGender: #{gender}\nHeight: #{height}\nWeight: #{weight}\nEmail: #{email}\nPhone: #{phone};
       "
    end
end

class Student < Mans
   $code;
   $grade_1;
   $grade_2;
   $grade_3;

   def initialize(name, gender,height, weight,email,phone, code, grade_1, grade_2, grade_3)
      super(name, gender,height, weight,email,phone)
      @code = code;
      @grade_1 = grade_1;
      @grade_2 = grade_2;
      @grade_3 = grade_3;
   end

   def code
      @code
   end
   def grade_1
      @grade_1
   end
   def grade_2
      @grade_2
   end
   def grade_3
      @grade_3
   end
   
   def code=(code)
      @code = code
   end
   def grade_1=(grade_1)
      @grade_1 = grade_1
   end
   def grade_2=(grade_2)
      @grade_2 = grade_2
   end
   def grade_3=(grade_3)
      @grade_3 = grade_3
   end
   
   def average
      (@grade_1 + @grade_2 + @grade_3 )*1.0/3
   end

   def showInformation
      super
      puts "Code : #{code}\nAverage score: #{average};
       "
   end
end
arraysStudent = Array.new
student_1 = Student.new("Sy","Male",170, 70, "sybuivan1429@gmail.com","0947895039",1911505310248, 8,9,10).showInformation
student_2 = Student.new("Nhan","Male",170, 70, "sybuivan1429@gmail.com","0947895039",1911505310248, 8,9,10).showInformation
student_3 = Student.new("Huy","Male",170, 70, "sybuivan1429@gmail.com","0947895039",1911505310248, 8,9,10).showInformation
student_4 = Student.new("Thien","Male",170, 70, "sybuivan1429@gmail.com","0947895039",1911505310248, 8,9,10).showInformation
# Student.new(1911505310224, 8,10,10).showInformation
arraysStudent.push(student_1, student_2,student_3,student_4)

arraysStudent.each do |student|
   puts "#{student}"
end