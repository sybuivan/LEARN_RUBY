class QuanLyMuonSach
   def initialize
       
   end

   def addTicket(ticketBook_248, tagBook)
       ticketBook_248.push(tagBook)
   end

   def checkCode(ticketBook_248, key_248)
       for tagBook in ticketBook_248 do
           if tagBook.maPhieuMuon_248 == key_248
               return true
           end
       end
   end

   def deleteById(ticketBook_248, key_248)
       tm_248 = ticketBook_248.select{|tagBook| tagBook.maPhieuMuon_248 == key_248}
       if (tm_248.length() != 0)
         ticketBook_248.delete_if{|tagBook| tagBook.maPhieuMuon_248 == key_248}
         puts("Deleted successfully! You can review the list of borrowed cards on task 3!")
      else
         puts("This coupon code does not exist!")
      end
   end

   def showListCoupon(ticketBook_248)
      if (ticketBook_248.length() != 0)
         puts("** List of Borrowed Vouchers **")
         for tagBook in ticketBook_248 do
             tagBook.hienThiThongTin()
         end
     else
         puts("No coupons available!")
     end
   end
end