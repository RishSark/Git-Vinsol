class String
  VOWEL_REGEX = /[aeiou]/i.freeze
  def replace_vowels(sign = '*')
    gsub(VOWEL_REGEX, sign )
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  print ARGV[0].replace_vowels
end