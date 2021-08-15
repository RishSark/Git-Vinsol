class String
  def highlight_result(rgex_str_input)
    char = /#{rgex_str_input}/i.freeze
    count = 0
    output_value = gsub(char) { |n|
           count += 1
           "(#{n})"
         }
    return output_value, count
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  highlight_str, count = ARGV[0].highlight_result(ARGV[1])
  puts highlight_str,"Total occurrences found: #{count}"
end