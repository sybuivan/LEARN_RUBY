class TuyenSinh
   def initialize
   end

   def addStudent(thiSinhS_248, thiSinh_248)
       thiSinhS_248.push(thiSinh_248)
   end

   def checkSeriesNumber(thiSinhS_248, key_248)
       for thiSinh_248 in thiSinhS_248 do
           if thiSinh_248.soBaoDanh_248 == key_248
               return true
           end
       end
   end

   def showListStudent(thiSinhS_248)
       a = thiSinhS_248.uniq {|thiSinh_248| thiSinh_248.soBaoDanh_248}
       for thiSinh_248 in a do
           thiSinh_248.showInformation()
       end
   end

   def serachBySeriesNumber(thiSinhS_248, key_248)
       for thiSinh_248 in thiSinhS_248 do
           if thiSinh_248.soBaoDanh_248.include? key_248
               puts("-- Results: ")
               thiSinh_248.showInformation()       
           else
               puts("No matching registration number found!")         
           end
       end
   end
end