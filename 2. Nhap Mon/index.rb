# sum = 0
# for a in 1..100 do
#    sum += a
#   end
#   puts sum

sum = 0
for a in 1..100 do
   if a%5 == 0
      sum += a
   end
end
puts sum