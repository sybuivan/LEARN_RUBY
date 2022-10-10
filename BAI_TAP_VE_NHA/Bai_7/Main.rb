load "GiaoVien.rb"
load "QuanLyGiaoVien.rb"

managerTeacher_248 = QuanLyGiaoVien.new
teacher_248 = []

while(true)
   puts("----Manager TEACHER ----")
   puts("1. Add new teacher information")
   puts("2. Delete teacher information by teacher code")
   puts("3. Display teacher information")
   puts("4. Exit the program")
   puts("-- Select job: ")
    cv_248 = gets.to_i

    case cv_248
        when 1
            puts("== 1. Add new teacher information ==")
            print("*Enter first and last name: ")
            name_248 = gets.to_s
            print("*Enter age: ")
            age_248 = gets.to_i
            print("*Enter hometown: ")
            homeDown_248 = gets.to_s
            print("*Enter teacher code: ")
            idCode_248 = gets.to_s
            while (managerTeacher_248.checkCode(teacher_248, idCode_248) == true)
                print("Teacher code already exists! Retype: ")
                idCode_248 = gets.to_s
            end
            print("*Enter hard salary: ")
            lgCung_248 = gets.to_i
            print("*Enter salary: ")
            lgThuong_248 = gets.to_i
            print("*Enter fine: ")
            tienPhat_248 = gets.to_i
            lgThucLinh_248 = lgCung_248 + lgThuong_248 - tienPhat_248
            GiaoVien_248 = GiaoVien.new(name_248, age_248, homeDown_248, idCode_248, lgCung_248, lgThuong_248, tienPhat_248, lgThucLinh_248)
            managerTeacher_248.addTeacher(teacher_248, GiaoVien_248)
        when 2
            puts("== 2. Delete teacher information by teacher code ==")
            puts("*Enter the teacher code you want to delete: ")
            key_248 = gets.to_s
            managerTeacher_248.deleteById(teacher_248, key_248)
        when 3
            puts("== 3. Display teacher information ==")
            if(teacher_248.length != 0) 
                puts("** List of teachers **")
                managerTeacher_248.showListTeacher(teacher_248)
            else
                puts("There are no teachers!")
            end
        when 4
            puts("== 4. Exit the program ==")
            puts("See you later!")
            return
        else
            puts("Invalid!")
    end
end