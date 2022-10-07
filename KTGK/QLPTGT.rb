class QLPTGT 
   $listCar_248 = []
   def initialize
   end

   def addCar (car_248)
      $listCar_248 << car_248
   end

   def showListDocuments
      $listCar_248.each do |car|
         puts car.showInformation
      end
   end

   def deleteById(id_248)
      $listCar_248.each do |car|
         if car.id_248 == id_248
            $listCar_248.delete_if {|car| car.id_248 == id_248}
            puts "====Deleted successfully.====="
         else
            puts "Not found car with id"
         end
      end
   end

   def searchByColor(searchInput)
      puts("--Show list results -- ")
      $listCar_248.each do |car|
          if car.mauXe_248.include? searchInput
            car.showInformation                
          end
      end
  end

  def searchByHangSx(searchInput)
      puts("--Show list results -- ")
      $listCar_248.each do |car|
         if car.hsx_248.include? searchInput
            car.showInformation                
         end
      end
   end

   def searchByCarCode(searchInput)
      puts("--Show list results -- ")
      $listCar_248.each do |car|
         if car.bienSo_248.include? searchInput
            car.showInformation                
         end
      end
   end

end