class PascalTriangle
  def generate(input)
    pascal_arr = [] if input == 0
    1.upto(input.to_i) do |i|
      pascal_arr = [1] if i == 1
      yield pascal_arr
      pascal_arr.unshift(0)
      pascal_arr.push(0)
      pascal_arr = pascal_arr.each_cons(2).map(&:sum)
    end
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  a = PascalTriangle.new
  a.generate(ARGV[0]) { |n| puts "#{n.join(' ')} " }
end