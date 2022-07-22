# user or dev
# puts "Enter first number: "
# num1 = gets.chomp().to_f
num1 = 4.5
# puts "Enter operator"
# operator = gets.chomp()
operator = '/'
# puts "Enter second number"
# num2 = gets.chomp().to_f
num2 = 2

# check operator
if operator == "+"
    puts (num1 + num2)
elsif operator == "-"
    puts (num1 - num2)
elsif operator == "/"
    puts (num1 / num2)
elsif operator == "*"
    puts (num1 * num2)
else 
    puts "invalid operator"
end
# to_i to add rather than concatinate
# to_f to turn into floating points

