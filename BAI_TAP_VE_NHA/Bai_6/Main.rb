load "HocSinh.rb"
load "QuanLyHocSinh.rb"

managerStudent_248 = QuanLyHocSinh.new
student_248 = []

while(true)
    puts("1. Add new students.")
    puts("2. Show the number of all students")
    puts("3. Show students 20 years old.")
    puts("4. Show the number of students whose age is 23 and their hometown in DN.")
    puts("5. Exit program")
    puts("-- Choose job: ")
    cv_248 = gets.to_i

    case cv_248
        when 1
            puts("== 1. Add new students. ==")
            print("*Enter name: ")
            name_248 = gets.to_s
            print("*Enter age: ")
            age_248 = gets.to_i
            print("*Enter home down: ")
            homeDown_248 = gets.to_s
            print("*Enter class: ")
            class_248 = gets.to_s
            hocSinh_248 = HocSinh.new(name_248, age_248, homeDown_248, class_248)
            managerStudent_248.addStudent(student_248, hocSinh_248)
        when 2
            puts("== 2.Show the number of all students==")
            if(student_248.length != 0)
                puts("** List student **")
                managerStudent_248.showListStudent(student_248)
            else
                puts("Empty student!")
            end
        when 3 
            puts("== 3. Show students 20 years old. ==")
            managerStudent_248.showListStudentByAge20(student_248)
        when 4
            puts("== 4. Show the number of students whose age is 23 and their hometown in DN. ==")
            managerStudent_248.showListStudentByAge23(student_248)
        when 5
            puts("== 5. Exit program ==")
            puts("See you again!")
            return
        else
            puts("Illegal!")
    end
end