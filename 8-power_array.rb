class Array
	def power(input)
      map! { |element| element.to_i**input.to_i}
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  print ARGV[0].scan(/\d+/).power(ARGV[1])
end