class ReplaceRegex
    attr_reader :input
    def initialize(input)
        @input = input
    end
    def rep_re
        return input.downcase.gsub(/[aeiou]/,"*")
    end
end
input = gets.chomp()
if input != ""
    print(ReplaceRegex.new(input).rep_re)
else
    print("Please provide an input")
end