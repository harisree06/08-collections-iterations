
# Count to 100 using i as the counter
count_100 = (1..100)

3 == 3

def get_fizzbuzz(count_100)
  count_100.each do |number|

    if number % 3 == 0 && number % 5 == 0
      puts "BitMaker"
    elsif number % 3 == 0
      puts "Bit"
    elsif number % 5 == 0
      puts "Maker"
    else
      puts number
    end

  end

end


get_fizzbuzz(count_100)
