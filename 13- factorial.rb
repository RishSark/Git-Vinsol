class Numeric
  def factorial
    if self >= 0
      (1..self).inject(1, :*)
    else
      'Give number Greater than zero'
    end
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  begin
    print Integer(ARGV[0]).factorial
  rescue TypeError => a
    puts a
  rescue ArgumentError => b
    puts b
  end
end