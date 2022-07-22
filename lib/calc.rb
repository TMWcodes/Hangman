puts "enter a number: "
num1 = gets.chomp()
puts "Enter another number"
num2 = gets.chomp()

# to_i to add rather than concatinate
# to_f to turn into floating points
puts (num1.to_f + num2.to_f)