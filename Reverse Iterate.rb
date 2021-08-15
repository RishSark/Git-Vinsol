class Array
  def reverse_iterate
    1.upto(length) {|x| yield self[length-x]}
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  ARGV[0][1..-2].split(',').reverse_iterate { |i| print "#{i} "}#.gsub!("'", '')
end