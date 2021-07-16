input = gets.chomp()
if input != ""
    fib, fib1 = 0, 1
    while fib1 < input.to_i
        fib, fib1 = fib1, fib1 + fib
        print fib.to_s + " "
    end
    
else
    puts "N"
end