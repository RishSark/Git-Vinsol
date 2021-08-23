# Using Ruby version: ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]
# Your Ruby code here
class String
  def highlight_keyword(keyword)
    rgex_str_input = /#{keyword}/i.freeze
    gsub(rgex_str_input) { |n| "(#{n})" }
  end

  def count_keyword_in_str(keyword)
    rgex_str_input = /#{keyword}/i.freeze
    "Total occurrences found: #{gsub(rgex_str_input).count}"
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  puts ARGV[0].highlight_keyword(ARGV[1])
  puts ARGV[0].count_keyword_in_str(ARGV[1])
end