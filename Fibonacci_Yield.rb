class FibonacciYield
    attr_reader :input
    def initialize(input)
      @input = input
    end
    def Fibonacci
      fib, fib1 = 0, 1
      while fib1 <= input.to_i
        fib, fib1 = fib1, fib1 + fib
        print fib.to_s + " "
      end
    end
  end
  if ARGV.empty?
    print('Please provide an input')
  else
    FibonacciYield.new(ARGV[0]).Fibonacci
  end