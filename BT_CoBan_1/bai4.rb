arrays = [];
print "Enter number 1 : ";
a = gets.to_i;
arrays.push(a)
print "Enter number 2 : ";
b = gets.to_i;
arrays.push(b)
print "Enter number 3 : ";
c = gets.to_i;
arrays.push(c);

puts "Ascending array : "
print arrays.sort;

puts "\n Descending array: "
print arrays.sort.reverse;