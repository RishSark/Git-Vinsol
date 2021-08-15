class Numeric
    def prime_numbers
      prime_list = []
      if self >= 2
        prime_list.push(2)
        (3..self).step(2).each do |i|
          condition = true
          (3..i / 2).step(2).each { |j| condition = false if (i % j).zero?  }
          prime_list.push(i) if condition
        end
      end
      print prime_list
    end
  end
  if ARGV.empty?
    print('Please provide an input')
  else