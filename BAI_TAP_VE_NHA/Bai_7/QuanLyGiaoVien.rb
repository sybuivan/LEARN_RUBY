class QuanLyGiaoVien
   def initialize
   end

   def addTeacher(giaoVienS_248, giaoVien_248)
       giaoVienS_248.push(giaoVien_248)
   end

   def checkCode(giaoVienS_248, key_248)
       for giaoVien_248 in giaoVienS_248 do
           if giaoVien_248.idCode_248 == key_248
               return true
           end
       end
   end

   def showListTeacher(giaoVienS_248)
       a = giaoVienS_248.uniq {|giaoVien_248| giaoVien_248.idCode_248}
       for giaoVien_248 in a do
           giaoVien_248.showInformation()
       end
   end

   def deleteById(giaoVienS_248, key_248)
       gv_248 = giaoVienS_248.select{|giaoVien_248| giaoVien_248.idCode_248 == key_248}
       if (gv_248.length != 0)
         giaoVienS_248.delete_if{|teacher| teacher.idCode_248 == key_248}
         puts("Delete successful! You can review the list of documents on task 3!")
      else
         puts("No matching teacher code found!")
      end
   end
end