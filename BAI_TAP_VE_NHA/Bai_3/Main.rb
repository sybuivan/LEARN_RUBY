load "KhoiA.rb"
load "KhoiB.rb"
load "KhoiC.rb"
load "TuyenSinh.rb"

tuyenSinh_248 = TuyenSinh.new
thiSinhS_248 = []

while (true)
    puts("---- Application Manager Candidate ----")
    puts("1. Add new candidates.")
    puts("2. Displays the candidate's information and the candidate's exam block.")
    puts("3. Search by serial number.")
    puts("4. Exit the program.")
    puts("-- Choose : ")
    cv_248 = gets.to_i

    case cv_248
        when 1
            puts("1  to insert Candidate A")
            puts("2. to insert Candidate B")
            puts("3. to insert Candidate C")
            puts("-- Choose type Candidate ")
            khoiThi_248 = gets.to_i
            case khoiThi_248
                when 1
                    print("== To insert Candidate A ==")
                    print("*Entern ID: ")
                    soBaoDanh_248 = gets.to_s
                    while (tuyenSinh_248.checkSeriesNumber(thiSinhS_248, soBaoDanh_248) == true)
                        print("Registration number already exists! Retype:")
                        soBaoDanh_248 = gets.to_s
                    end

                    print("*Enter full name ")
                    hoTen_248 = gets.to_s
                    print("*Enter address: ")
                    diaChi_248 = gets.to_s
                    print("*Entern Priority: ")
                    mucUuTien_248 = gets.to_i
                    khoiA_248 = KhoiA.new(soBaoDanh_248, hoTen_248, diaChi_248, mucUuTien_248)
                    tuyenSinh_248.addStudent(thiSinhS_248, khoiA_248)
                when 2
                    print("== To insert Candidate B ==")
                    print("*Entern ID: ")
                    soBaoDanh_248 = gets.to_s
                    while (tuyenSinh_248.checkSeriesNumber(thiSinhS_248, soBaoDanh_248) == true)
                     print("Registration number already exists! Retype:")
                     soBaoDanh_248 = gets.to_s
                    end

                    print("*Enter full name ")
                    hoTen_248 = gets.to_s
                    print("*Enter address: ")
                    diaChi_248 = gets.to_s
                    print("*Entern Priority: ")
                    mucUuTien_248 = gets.to_i
                    khoiB_248 = KhoiB.new(soBaoDanh_248, hoTen_248, diaChi_248, mucUuTien_248)
                    tuyenSinh_248.addStudent(thiSinhS_248, khoiB_248)
                when 3
                     print("== To insert Candidate C ==")
                     print("*Entern ID: ")
                     soBaoDanh_248 = gets.to_s
                     while (tuyenSinh_248.checkSeriesNumber(thiSinhS_248, soBaoDanh_248) == true)
                        print("Registration number already exists! Retype:")
                        soBaoDanh_248 = gets.to_s
                     end

                     print("*Enter full name ")
                     hoTen_248 = gets.to_s
                     print("*Enter address: ")
                     diaChi_248 = gets.to_s
                     print("*Entern Priority: ")
                     mucUuTien_248 = gets.to_i
                    khoiC_248 = KhoiC.new(soBaoDanh_248, hoTen_248, diaChi_248, mucUuTien_248)
                    tuyenSinh_248.addStudent(thiSinhS_248, khoiC_248)
                else 
                    puts("Illegal!")
            end
        when 2
            puts("== 2. Displays the candidate's information and the candidate's exam block. ==")
            if(thiSinhS_248.length != 0)
                puts("** List student **")
                tuyenSinh_248.showListStudent(thiSinhS_248)
            else
                puts("Not found list student!")
            end  
        when 3
            puts("== 3. Search by serial number. ==")
            puts("*Enter the number you want to find: ")
            soBaoDanhTK_248 = gets.to_s
            tuyenSinh_248.serachBySeriesNumber(thiSinhS_248, soBaoDanhTK_248)
        when 4
            puts("== 4. Exit program==")
            return
        else
            puts("Illegal!")
    end
end