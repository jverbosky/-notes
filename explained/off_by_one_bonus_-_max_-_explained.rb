def nums_one_away(num, array)
  numArray = num.to_s.split("")
  oneOff = []
  iteration = 1

  array.each do |n| #itterate over array element
    index = 0
    count = 0
    puts "\n"
    puts "Iteration count: #{iteration}"
    puts "Array element - n: #{n}"
    puts "Number - num: #{num}"

    puts "*Compare each digit in ticket number to each digit in array number*"
    numArray.each do |i| #itterate over each digit in num
    puts "Ticket number digit - i: #{i}"

      if n.size == num.size
        puts "Array number digit - n[index]: #{n[index]}"
        if n[index].to_i == i.to_i + 1 || n[index].to_i == i.to_i - 1
          count += 1
        end
      end
      index += 1
    end

    puts "Count of digits off by one: #{count}"

    if count == 1 #now let's prune non-same base numbers
      oneOff << n
      print "Current numbers in array to return: #{oneOff}"
      print "\n"

      oneOff.each do |j|
        temp = 0
        differences = 0
        puts "*Checking for digits off by more than one for: #{j}*"

        j.each_char do |c|
          puts "Number to return digit - c: #{c}"
          puts "Ticket number digit - num[temp]: #{num[temp]}"
          if c != num[temp]
            differences +=1
          end
        temp+=1
        end
        puts "Count of different digits: #{differences}"

        if differences != 1
          puts "More than 1 digit different, so delete from oneOff array - n: #{n}"
          oneOff.delete(n)
        end
        print "Current contents of oneOff array: #{oneOff}"
        print "\n"

      end

    end

  iteration += 1
  end

  oneOff
end

print "\n"
print nums_one_away('10123', ['11323', '11123','20123', '11133', '10125'])