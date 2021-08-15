class Array
  def len_of_string
    group_by {|x|x.length}.inject(Hash.new { |hash, key| hash[key] = [] ) do |odd_even_hash, (key, value)|
      if key % 2 ==0
        odd_even_hash['even'].push(value)
      else
        odd_even_hash['odd'].push(value)
      end
      odd_even_hash
    end
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  print ARGV[0][1..-2].split(',').len_of_string
end