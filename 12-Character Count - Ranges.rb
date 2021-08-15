# Using Ruby version: ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]
# Your Ruby code here
class String
  LOWER_REGEX = /[a-z]/.freeze
  UPPER_REGEX = /[A-Z]/.freeze
  DIGIT_REGEX = /[0-9]/.freeze
  def character_count
    character_string = self
    case_list = %w[Lowercase Uppercase Numeric Special]
    regex_list = [LOWER_REGEX, UPPER_REGEX, DIGIT_REGEX]
    case_list.each do |character_case|
      regex = regex_list.shift
      value = regex.nil? ? character_string.length : character_string.scan(regex).length
      character_string = character_string.gsub(regex, '') unless regex.nil?
      puts "#{character_case} characters = #{value}"
    end
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  ARGV[0].character_count
end