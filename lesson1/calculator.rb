def say(msg)
  puts "=> #{msg}"
end

say "Enter number: 1)addition 2)subtraction 3)multiplication 4)division"
choice = gets.chomp
say "Enter a first number"
num1 = gets.chomp
say "Enter a second number"
num2 = gets.chomp

case choice.to_i
when 1
  result = num1.to_i + num2.to_i
when 2
  result = num1.to_i - num2.to_i
when 3
  result = num1.to_i * num2.to_i
when 4
  result = num1.to_f / num2.to_f
end

say "The result is #{result}"