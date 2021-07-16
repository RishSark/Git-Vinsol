class HashTask
    attr_reader :input
    def initialize(input)
      @input = input
    end
    def strcount
      letter_list = Hash.new(0)
      input.scan(/[[:alpha:]]/) { |letter| letter_list[letter] = input.count(letter) }
      puts letter_list
    end
  end
  if ARGV.empty?
    print('Please provide an input')
  else
    HashTask.new(ARGV[0]).strcount
  end