class GiaoVien
   attr_accessor :name_248
   attr_accessor :age_248
   attr_accessor :homeDown_248
   attr_accessor :idCode_248
   attr_accessor :lgCung_248
   attr_accessor :lgThuong_248
   attr_accessor :tienPhat_248
   attr_accessor :lgThucLinh_248

   def initialize(name_248, age_248, homeDown_248, idCode_248, lgCung_248, lgThuong_248, tienPhat_248, lgThucLinh_248)
       @name_248 = name_248
       @age_248 = age_248
       @homeDown_248 = homeDown_248
       @idCode_248 = idCode_248
       @lgCung_248 = lgCung_248
       @lgThuong_248 = lgThuong_248
       @tienPhat_248 = tienPhat_248
       @lgThucLinh_248 = lgThucLinh_248
   end

   def showInformation()
       puts("-- FullName: #{@name_248} - age: #{@age_248} - Hown down: #{@homeDown_248} - Id Code: #{@idCode_248} - Solid salary: #{lgCung_248} - Salary: #{lgThuong_248} - Fine: #{@tienPhat_248} - Food received: #{@lgThucLinh_248} ")
   end
end