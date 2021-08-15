class Vehicle
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price.to_i
  end

  def to_s
    puts "Bike Name: #{name}\nBike Price: #{price}\nBike Dealer: #{dealer}"
  end
end

# Subclass of Vehicle
class Bike < Vehicle
  attr_reader :dealer, :percent_price_increase
  def initialize(name, price, dealer, percent_price_increase)
    super(name, price)
    @dealer = dealer
    @percent_price_increase = percent_price_increase.to_f
  end

  def price_increase
    to_s
    puts "\nAfter #{percent_price_increase} percent hike in price:"
    @price += price * percent_price_increase * 0.01
    to_s
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  bike = Bike.new(ARGV[0], ARGV[1], ARGV[2], ARGV[3]).price_increase
end