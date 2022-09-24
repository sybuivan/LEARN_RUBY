class Human
   @name;
   @hair;
   @age;
   @height;
   @weight;
   @email;
   @phone;
   @nation;

   def initialize(name, hair, age, height, weight, email, phone,nation)
      @name = name;
      @hair = hair;
      @age = age;
      @height = height;
      @weight = weight;
      @email = email;
      @phone = phone
      @nation = nation;
   end

   attr_accessor :name, :hair, :age, :height, :weight, :email, :phone, :nation;

   def showInformation
      puts "\nName : #{name}||Hair: #{hair}||Age: #{age}||Height: #{height}||Weight: #{weight}||Email: #{email}||Phone: #{phone}||Nation: #{nation};"
    end
end

class Student < Human
   $code;
   $grade_1;
   $grade_2;
   $grade_3;

   def initialize(name, hair, age, height, weight, email, phone,nation, code, grade_1, grade_2, grade_3)
      super(name, hair, age, height, weight, email, phone,nation)
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

# name, hair, age, height, weight, email, phone,nation, code, grade_1, grade_2, grade_3
listStudent = Array.new
student_1 = Student.new("Sy","Black",20,170, 70, "sybuivan1429@gmail.com","0947895039","VN",1911505310248, 8,9,7)
student_2 = Student.new("Nhan","Black",20,170, 70, "Nhan@gmail.com","0947895039","VN",1911505310248, 8,9,6)
student_3 = Student.new("Huy","Orange",20,170, 70, "Huy@gmail.com","0947895039","VN",1911505310248, 8,9,4)
student_4 = Student.new("Thien","Black",20,170, 70, "Thien@gmail.com","0947895039","VN",1911505310248, 8,9,10)

listStudent.push(student_1, student_2,student_3,student_4)
puts '------------------Show student list :------------------'
for i in 0..(listStudent.length-1)
    puts "------------Student #{i+1} ------------"
    puts listStudent[i].showInformation
 end

 puts '------------------Sorted student list :------------------'

 studentSort = listStudent.sort_by{|student| [student.average]}.reverse
 for i in 0..(studentSort.length-1)
    puts "------------Student #{i+1} ------------:"
    puts studentSort[i].showInformation
 end