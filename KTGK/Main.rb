load "oto.rb"
load 'phuongTien.rb'
load 'QLPTGT.rb'
load 'XeMay.rb'
load 'XeTai.rb'

class Main
   managerCar_248 = QLPTGT.new

   while true
      puts "------- Manager Car------"
      puts "Enter 1: To insert car "
      puts "Enter 2: To show information car"
      puts "Enter 3: Search hsx, color, codeCar"
      puts "Enter 4: To remove car by id"
      puts "Enter 5: To exit:"

      print "----Choose case----:  "
      choose_248 = gets.to_i
      case choose_248
         when 1
            puts "Enter 1: to insert O to"
            puts "Enter 2: to insert Xe May"
            puts "Enter 3: to insert Xe Tai"
            print "----Choose case----:  "
            chooseNumber_248 = gets.to_i
            case chooseNumber_248
               when 1
                  print "Enter ID: "
                  id_248 = gets.to_i
                  print "Enter hsx:"
                  hsx_248 = gets.to_s
                  print "Enter NamSX: "
                  namsx_248 = gets.to_i
                  print "Enter DongXe: "
                  dongXe_248 = gets.to_s
                  print "Enter GiaBan: "
                  giaBan_248 = gets.to_i
                  print "Enter BienSo: "
                  bienSo_248 = gets.to_s
                  print "Enter MauXe: "
                  mauXe_248 = gets.to_s
                  print "Enter ChoNgoi: "
                  choNgoi_248 = gets.to_s
                  print "Enter KieuDC: "
                  kieuDC_248 = gets.to_s
                  print "Enter Nhien Lieu: "
                  nhienLieu_248 = gets.to_s
                  print "Enter So tui khi "
                  soTuiKhi_248 = gets.to_i
                  print "Enter ngay dk: "
                  ngaydk_248 = gets.to_s


                  car_248 = Oto.new(id_248, hsx_248, namsx_248, dongXe_248, giaBan_248, bienSo_248, mauXe_248, choNgoi_248, kieuDC_248, nhienLieu_248, soTuiKhi_248, ngaydk_248)
                  managerCar_248.addCar(car_248)

               when 2
                  print "Enter ID: "
                  id_248 = gets.to_i
                  print "Enter hsx:"
                  hsx_248 = gets.to_s
                  print "Enter NamSX: "
                  namsx_248 = gets.to_i
                  print "Enter DongXe: "
                  dongXe_248 = gets.to_s
                  print "Enter GiaBan: "
                  giaBan_248 = gets.to_i
                  print "Enter BienSo: "
                  bienSo_248 = gets.to_s
                  print "Enter MauXe: "
                  mauXe_248 = gets.to_s

                  print "Enter Cong xuat: "
                  congXuat_248 = gets.to_s
                  print "Enter Dung Tich: "
                  dungTich_248 = gets.to_s
                  
                  car_248 = XeMay.new(id_248, hsx_248, namsx_248, dongXe_248, giaBan_248, bienSo_248, mauXe_248, congXuat_248, dungTich_248)
                  managerCar_248.addCar(car_248)

               when 3
                  print "Enter ID: "
                  id_248 = gets.to_i
                  print "Enter hsx:"
                  hsx_248 = gets.to_s
                  print "Enter NamSX: "
                  namsx_248 = gets.to_i
                  print "Enter DongXe: "
                  dongXe_248 = gets.to_s
                  print "Enter GiaBan: "
                  giaBan_248 = gets.to_i
                  print "Enter BienSo: "
                  bienSo_248 = gets.to_s
                  print "Enter MauXe: "

                  mauXe_248 = gets.to_s
                  print "Enter Trong Tai: "
                  trongTai_248 = gets.to_i

                  car_248 = XeTai.new(id_248, hsx_248, namsx_248, dongXe_248, giaBan_248, bienSo_248, mauXe_248, trongTai_248)
                  managerCar_248.addCar(car_248)
            end
         when 2
            puts "Show list car"
            managerCar_248.showListDocuments
         when 3
            # logic search
            puts "Search by color, hangsx, carCode"
            puts "1. Search by color:"
            puts "2. Search by hangsx:"
            puts "3. Search by carCode:"
            puts "Choose number:"
            choose_248 = gets.to_i

            case choose_248
            when 1
               puts "Search by color"
               colorBy_248 = gets.chomp
               managerCar_248.searchByColor(colorBy_248)
            when 2
               puts "Search by hangsx"
               hangsxBy_248 = gets.chomp
               managerCar_248.searchByHangSx(hangsxBy_248)
            when 3
               puts "Search by carCode"
               carCodeBy_248 = gets.chomp
               managerCar_248.searchByHangSx(carCodeBy_248)
            end

         when 4
            print "Delete car by id: "
            id_248 = gets.to_i
            managerCar_248.deleteById(id_248)
         when 5
            puts " == 5. Exit  == " 
            puts "またね"
            break 
      end

   end
end