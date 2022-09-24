class Human
   @name_248;
   @hair_248;
   @age_248;
   @height_248;
   @weight_248;
   @email_248;
   @phone_248;
   @nation_248;

   def initialize(name_248, hair_248, age_248, height_248, weight_248, email_248, phone_248,nation_248)
      @name_248 = name_248;
      @hair_248 = hair_248;
      @age_248 = age_248;
      @height_248 = height_248;
      @weight_248 = weight_248;
      @email_248 = email_248;
      @phone_248 = phone_248;
      @nation_248 = nation_248;
   end

   attr_accessor :name_248, :hair_248, :age_248, :height_248, :weight_248, :email_248, :phone_248, :nation_248;

   def showInformation
      puts "\nName : #{name_248}||Hair: #{hair_248}||Age: #{age_248}||Height: #{height_248}||Weight: #{weight_248}||Email: #{email_248}||Phone: #{phone_248}||Nation: #{nation_248};"
    end
end

class Student < Human
   $code_248;
   $grade_1_248;
   $grade_2_248;
   $grade_3_248;

   def initialize(name_248, hair_248, age_248, height_248, weight_248, email_248, phone_248,nation_248, code_248, grade_1_248, grade_2_248, grade_3_248)
      super(name_248, hair_248, age_248, height_248, weight_248, email_248, phone_248,nation_248)
      @code_248 = code_248;
      @grade_1_248 = grade_1_248;
      @grade_2_248 = grade_2_248;
      @grade_3_248 = grade_3_248;
   end

   def code_248
      @code_248
   end
   def grade_1_248
      @grade_1_248
   end
   def grade_2_248
      @grade_2_248
   end
   def grade_3_248
      @grade_3_248
   end
   
   def code_248=(code_248)
      @code_248 = code_248
   end
   def grade_1_248=(grade_1_248)
      @grade_1_248 = grade_1_248
   end
   def grade_2_248=(grade_2_248)
      @grade_2_248 = grade_2_248
   end
   def grade_3_248=(grade_3_248)
      @grade_3_248 = grade_3_248
   end
   
   def average_248
      (@grade_1_248 + @grade_2_248 + @grade_3_248 )*1.0/3
   end

   def showInformation
      super
      puts "Code : #{code_248}\nAverage score: #{average_248};
       "
   end
end

# name, hair, age, height, weight, email, phone,nation, code, grade_1, grade_2, grade_3
listStudent_248 = Array.new
student_1_248 = Student.new("Sy","Black",20,170, 70, "sybuivan1429@gmail.com","0947895039","VN",1911505310248, 8,9,7)
student_2_248 = Student.new("Nhan","Black",20,170, 70, "Nhan@gmail.com","0947895039","VN",1911505310248, 8,9,6)
student_3_248 = Student.new("Huy","Orange",20,170, 70, "Huy@gmail.com","0947895039","VN",1911505310248, 8,9,4)
student_4_248 = Student.new("Thien","Black",20,170, 70, "Thien@gmail.com","0947895039","VN",1911505310248, 8,9,10)

listStudent_248.push(student_1_248, student_2_248,student_3_248,student_4_248)
puts '------------------Show student list :------------------'
for i in 0..(listStudent_248.length-1)
    puts "------------Student #{i+1} ------------"
    puts listStudent_248[i].showInformation
 end

 puts '------------------Sorted student list :------------------'

 studentSort_248 = listStudent_248.sort_by{|student| [student.average_248]}.reverse
 for i in 0..(studentSort_248.length-1)
    puts "------------Student #{i+1} ------------:"
    puts studentSort_248[i].showInformation
 end