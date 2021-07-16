class Hash
    attr_reader :input
    def initialize(input)
        @input = input
    end
    def str_count
        letter_list = Hash.new(0)
        input.downcase.scan(/\w/) {|letter|  letter_list[letter]= input.count(letter)}
        return letter_list
    end
end
input = gets.chomp()
puts Hash.new(input).str_count