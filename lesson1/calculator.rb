def say(msg)
  puts "=> " + msg
end

say "Enter number: 1)addition 2)subtraction 3)multiplication
4)division"
choice = gets.chomp
say "Enter a first number"
num1 = gets.chomp
say "Enter a second number"
num2 = gets.chomp

if choice.to_i == 1
  result = num1.to_i + num2.to_i
elsif choice.to_i == 2
  result = num1.to_i - num2.to_i
elsif choice.to_i == 3
  result = num1.to_i * num2.to_i
elsif choice.to_i == 4
  result = num1.to_f / num2.to_f
end

say "The result is #{result}"