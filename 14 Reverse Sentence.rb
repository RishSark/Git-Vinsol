class String
    def to_s
      split(' ').reverse.join(' ')
    end
  end
  if ARGV.empty?
    print('Please provide an input')
  else
    puts ARGV[0].to_s
  end