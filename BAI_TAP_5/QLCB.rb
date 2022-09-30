load  "NhanVien.rb"
load "CongNhan.rb"
load "KySu.rb"

class QLCB 
   def initialize
   end

   $canbos = []

   def addCanbo
      puts"1. Nhâp công nhân :"
      puts"2. Nhâp Ky su :"
      puts"3. Nhập Nhân viên :"
      print "Mơi bạn chon : "
      choose = gets.to_i
      if choose == 1 
          canbo = CongNhan.new
      elsif choose == 2
         canbo = KySu.new
      else 
         canbo = NhanVien.new
      end
      canbo.input
      $canbos << canbo
  end
#   show
  def infomatinon 
      puts "============Danh sách cán bộ là================"    
      $canbos.each do |canbo|
         puts canbo.showInformation
      end
   end

   def menu
      continute = true
      while continute
         puts "1. Them can bo"
         puts "2.Tim kiem"
         puts "3. Hien thi thong tin"
         puts "4. Thoat"
         number = gets
         case number.to_i
         when 1
            # nhan can bo
            nv = QLCB.new()
            nv.addCanbo
         when 2
            # 
         when 3
            # show infomatinon
            nv = QLCB.new()
            nv.infomatinon
         when 4
            # 
            puts "Good bye see you again!"
            continute = false
         else
            # 
         end
      end
   end
end


class Run < QLCB
   qlcb = QLCB.new
   qlcb.menu
end