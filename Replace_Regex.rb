class ReplaceRegex
    attr_reader :input
    def initialize(input)
      @input = input
    end
    def rep_re
      print(input.downcase.gsub(/[aeiou]/,"*"))
    end
  end
  if ARGV.empty?
    print('Please provide an input')
  else
    ReplaceRegex.new(ARGV[0]).rep_re
  end