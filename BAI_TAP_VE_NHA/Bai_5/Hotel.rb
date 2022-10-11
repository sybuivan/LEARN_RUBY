load 'Room.rb'
load 'RoomA.rb'
load 'RoomB.rb'
load 'RoomC.rb'
load 'Person.rb'

class Hotel < Person
  def initialize
      @persons_248 = []
  end

  def addRoom(value)
      @persons_248.push(value)
  end

  def deletePerson(cccd_248)
    ps_248 = @persons_248.select{|ps| ps.passport_248 == cccd_248}
    if (ps_248.length != 0)
        @persons_248.delete_if{|persons_248| persons_248.passport_248 == cccd_248}
        puts("Delete successful! You can review the list of documents on task 2!")
     else
        puts("No matching person code found!")
     end
  end
     
  def caculator(cccd_248)
    ps_248 = @persons_248.select{|ps| ps.passport_248 == cccd_248}
    if (ps_248.length != 0)
        for item_248 in @persons_248 do
            if(item_248.passport_248 == cccd_248)
               return item_248.price_248 * item_248.numberRent_248
            end
        end
     else
        puts("No matching person code found!")
     end
  end

  def display
    @persons_248.each{ |item_248| print item_248.display}
  end

end

hotel_248 = Hotel.new
while true
    puts "---Main function---"
    puts "1: Add a customer"
    puts "2: Show customer information"
    puts "3: Delete customer by CCCD"
    puts "4: Cash for customers according to CCCD"
    puts "5: Exit the program"
    print "Select the current function: "
    value = gets.to_i
    case value
        when 1
            print "_ Enter name: "
            name_248 = gets.to_s
            print "_ Enter age: "
            age_248 = gets.to_i
            print "_ Enter CCCD: "
            passport_248 = gets.to_s

            puts "Types:"
            puts "1 : Type A"
            puts "2 : Type B"
            puts "3: Type C"

            puts"Select type:"
            type_248 = gets.to_i

            case type_248
                when 1
                    room_248 = RoomA.new
                when 2
                    room_248 = RoomB.new
                when 3
                    room_248 = RoomC.new
                else
                    puts "No style"
            end
            print "Number of days want to rent"
            number_day_248 = gets.to_i

            if room_248
                person_248 = Person.new(name_248, age_248, passport_248, number_day_248, room_248.type_248, room_248.price_248)
                hotel_248.addRoom(person_248)
            end
            
        when 2
            hotel_248.display

        when 3
            print "+ Enter the CCCD of the client you want to erase: "
            cccd_248 = gets.to_s
            hotel_248.deletePerson(cccd_248)
            
        when 4
            print "+ Enter the client's CCCD: "
            cccd_248 = gets.to_s
            result_248 = hotel_248.caculator(cccd_248)
            puts "Totals price: #{result_248}"
        when 5
            break
        else
            puts "Illegal"

    end
end