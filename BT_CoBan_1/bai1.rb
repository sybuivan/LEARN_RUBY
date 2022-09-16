arrays = Array.new
avg = 0
print "Enter number size of arrays:"
numberSize = gets
for i in 1..numberSize.to_i do
   print "Entern number: "
   number = gets.to_i
   avg += number
   arrays.push number
end

avg = avg/arrays.length;
max = arrays.max;
min = arrays.min;

puts "Number min #{min}"
puts "Number max #{min}"
puts "Number Avg #{avg}"
