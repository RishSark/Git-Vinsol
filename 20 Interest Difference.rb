class Interest
  attr_accessor :p, :t
  INTEREST_RATE = 0.1
  def difference
      compute_compoundly - compute_simply
  end

  def compute_simply
    p * t * INTEREST_RATE
   end

  def compute_compoundly
    p * (1 + INTEREST_RATE)**t - p
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  interest_difference = Interest.new
  interest_difference.p = ARGV[0].to_i
  interest_difference.t = ARGV[1].to_f
  puts "Interest difference= #{format('%<difference>.2f', difference: interest_difference.difference)}"
end