class String
  REGEX = /[[:alpha:]]/
  def strcount
    letter_list = Hash.new(0)
    ARGV[0].scan(REGEX) {|letter| letter_list[letter] +=1}
    puts letter_list
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  String.new.strcount
end