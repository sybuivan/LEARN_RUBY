class PhanSo
   attr_accessor :a248, :b248, :c248, :d248
   def initialize(a248, b248, c248, d248)
       @a248= a248
       @b248 = b248
       @c248 = c248
       @d248 = d248
   end
   def initialize
   end
   def input248 
       puts "Nhập 2 phân số dạng A/B va C/D: "
       print "Nhập A: "
       @a248 = gets.to_f
       print "Nhập B: "
       @b248 = gets.to_f
       print "Nhập C: "
       @c248 = gets.to_f
       print "Nhập D: "
       @d248 = gets.to_f
   end
   def Sum()
       puts("Tổng 2 phân số là: #{@a248*@d248+@c248*@b248} / #{@b248*@d248}")
   end
   def Subtract()
       puts("Hiệu 2 phân số là: #{@a248*@d248-@c248*@b248} / #{@b248*@d248}")
   end
   def Multiply()
       puts("Tích 2 phân số là: #{@a248*@c248} / #{@b248*@d248}")
   end
   def Divise()
       puts("Thương 2 phân số là: #{@a248*@d248} / #{b248*c248}")
   end
end
class Main < PhanSo
   def initialize(a248, b248, c248, d248)
       super(a248, b248, c248, d248)
   end
   def initialize
   end
   def input248 
       super
   end
   def Sum()
       if @b248==0 || @d248 ==0
           puts("Illegal")
       else 
           super
       end
   end
   def Subtract()
       if @b248==0 || @d248 ==0
           puts("Illegal")
       else 
           super
       end
   end
   def Multiply()
       if @b248==0 || @d248 ==0
           puts("Illegal")
       else 
           super
       end
   end
   def Divise()
       if @b248==0 || @c248 ==0
           puts("Illegal")
       else
           super
       end
   end
end
$calculate248

while(true)
   puts("1. Tính tổng 2 phân số..")
   puts("2. Hiệu 2 phân số")
   puts("3. Tích 2 phân số.")
   puts("4. Thương 2 phân số.")
   puts("5. Thoát")
   puts("-- Chọn chức năng: ")
   cn248 = gets.to_i

   case cn248
       when 1
           pt1248=Main.new()
           pt1248.input248
           pt1248.Sum()
       when 2
           pt1248=Main.new()
           pt1248.input248
           pt1248.Subtract()
       when 3 
           pt1248=Main.new()
           pt1248.input248
           pt1248.Multiply()
       when 4
           pt1248=Main.new()
           pt1248.input248
           pt1248.Divise()
       when 5
           puts("== 5. Exit program==")
           return
       else
           puts("Wrong!")
   end
end