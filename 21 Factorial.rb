class Numeric
  def factorial
    raise if self < 0
    (1..self).inject(1, :*)
  end
end
begin
  input = Integer(ARGV[0])
  print input.factorial
rescue
  if ARGV.empty?
    puts 'Please provide an input'
  elsif Integer(ARGV[0])
    puts 'Negative number entered'
  end
end