require_relative 'Room.rb'

class Person < Room
   attr_accessor :name_248, :age_248, :passport_248, :numberRent_248

   def initialize(name_248, age_248, passport_248, numberRent_248, type_248, price_248)
       @name_248 = name_248
       @age_248 = age_248
       @passport_248 =passport_248
       @numberRent_248 = numberRent_248
       @type_248 = type_248
       @price_248 = price_248
   end

   def input
     print "_ Enter name: "
     @name_248 = gets.to_s
     print "_ Enter age: "
     @age_248 = gets.to_i
     print "_ Enter CCCD: "
     @passport_248 = gets.to_s
   end

   def display
     puts "-----------------------------------"
     puts "=> Name customers: #{@name_248}"
     puts "=> Customer age: #{@age_248}"
     puts "=> CCCD customer: #{@passport_248}"
     puts "=> Style: #{@type_248}"
     puts "=> Coins: #{@price_248}"
     puts "=> Mumber of rental days: #{@numberRent_248}"
   end
end