class Array
  def length_count_string
    len_hash = Hash.new { |hash, key| hash[key] = []}
    sort_by(&:length).each do |element|
      key = element.length
      len_hash[key].push(element)
    end
    len_hash
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  puts ARGV[0][2..-3].gsub!("'", '').split(',').length_count_string
end