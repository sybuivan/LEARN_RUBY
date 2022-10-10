class Nguoi
   attr_accessor :hoTen_248, :tuoi_248, :ngheNghiep_248, :cmnd_248

   def initialize(hoTen_248, tuoi_248, ngheNghiep_248, cmnd_248)
       @hoTen_248 = hoTen_248
       @tuoi_248 = tuoi_248
       @ngheNghiep_248 = ngheNghiep_248
       @cmnd_248 = cmnd_248
   end

   def showListPeople()
       puts("-FullName: #{@hoTen_248} - Age: #{@tuoi_248} - Job: #{@ngheNghiep_248} - ID card: #{@cmnd_248}")
   end
end