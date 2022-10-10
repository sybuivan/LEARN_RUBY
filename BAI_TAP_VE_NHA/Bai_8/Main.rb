load "TheMuon.rb"
load "QuanLyMuonSach.rb"

managerBook_248 = QuanLyMuonSach.new
ticketBook_248 = []

while(true)
    puts("---- MANAGEMENT CARDS ----")
    puts("1. Add new borrowed card")
    puts("2.Delete the borrowed card according to the loan coupon code")
    puts("3. Display a list of borrowed coupons")
    puts("4. Exit the program")
    puts("-- Select job: ")
    cv_248 = gets.to_i

    case cv_248
        when 1
            puts("== 1. Add a borrowed tag ==")
            print("*Enter the borrower's name: ")
            hoTen_248 = gets.to_s
            print("*Enter age: ")
            age_248 = gets.to_i
            print("*Import class: ")
            lop_248 = gets.to_s
            print("*Enter coupon code: ")
            maPhieuMuon_248 = gets.to_s
            while (managerBook_248.checkCode(ticketBook_248, maPhieuMuon_248) == true)
                print("Loan code already exists! Re-enter: ")
                maPhieuMuon_248 = gets.to_s
            end
            print("*Enter borrowed date: ")
            ngayMuon_248 = gets.to_i
            print("Enter payment term: ")
            hanTra_248 = gets.to_i
            print("Enter bookstore number: ")
            soHieuSach_248 = gets.to_s
            theMuon_248 = TheMuon.new(hoTen_248, age_248, lop_248, maPhieuMuon_248, ngayMuon_248, hanTra_248, soHieuSach_248)
            managerBook_248.addTicket(ticketBook_248, theMuon_248)
        when 2
            puts("== 2. Remove the borrowed card according to the loan coupon code ==")
            puts("*Enter the coupon code you want to delete: ")
            key_248 = gets.to_s
            managerBook_248.deleteById(ticketBook_248, key_248)
        when 3
            puts("== 3. Display the list of borrowed coupons ==")
            managerBook_248.showListCoupon(ticketBook_248)
        when 4
            puts("== 4. Exit the program ==")
            puts("See you later!")
            return
        else
            puts("Invalid!")

    end
end