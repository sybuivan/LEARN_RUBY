class QuanLyHocSinh
   def initialize
   end

   def addStudent(hocSinhS_248, hocSinh_248)
       hocSinhS_248.push(hocSinh_248)
   end

   def showListStudent(hocSinhS_248)
       for i in 0..(hocSinhS_248.length()-1) do
           puts("*Student #{i+1}: - Full Name: #{hocSinhS_248[i].name_248} - Age: #{hocSinhS_248[i].age_248} - Home town: #{hocSinhS_248[i].homeDown_248} - Class: #{hocSinhS_248[i].class_248}")
       end
   end

   def showListStudentByAge20(hocSinhS_248)
       hs_248 = hocSinhS_248.select{|hocSinh_248| hocSinh_248.age_248 == 20}
       if (hs_248.length() != 0)
           for i in 0..(hs_248.length()-1) do
               if(hs_248[i].age_248 == 20)
                   puts("*Student #{i+1}: - full Name: #{hs_248[i].name_248} - Age: #{hs_248[i].age_248} - Home down: #{hs_248[i].homeDown_248} - Class: #{hs_248[i].class_248}")
               end
           end
       else
           puts("Not found!")
       end
       
   end

   def showListStudentByAge23(hocSinhS_248)
       dem_248 = hocSinhS_248.select{|hocSinh_248| hocSinh_248.homeDown_248.include?("Da Nang") && hocSinh_248.age_248 == 23}.size
       puts("Number of 23-year-old students and hometown in Da Nang: #{dem_248}")
   end
end