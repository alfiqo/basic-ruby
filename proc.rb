multiples_of_3 = Proc.new do |n|
    n % 3 == 0
  end
  
#   print (1..100).to_a.select(&multiples_of_3)

  floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!
round_down = Proc.new { |x| x.floor }


# Write your code above this line!
ints = floats.collect(&round_down)
print ints