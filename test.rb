# Using Ruby version: ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]
# Your Ruby code here
class CalculateSalesTax 
  def self.take_input
    prints_list = ['Name of the product: ',
                   'Imported?: ',
                   'Exempted from sales tax?: ',
                   'Price: ',
                   'Do you want to add more items to your list(y/n): ']
    prints_list.inject([]) do |input_value, print_value|
      print print_value
      input = gets.chomp
      print_value == 'Price: ' ? input_value.push(input.to_i) : input_value.push(input)
    end
  end

  def self.value_input
    input_list = []
    loop do
      input_list.push(take_input)
      break if temp_list[4] == 'n'
    end
    input_list
  end

  def self.sales_tax
    item_cost_list = value_input.inject([]) do |list_value, val|
      val[3] += 0.05 * val[3] if val[1] == 'yes'
      val[3] += 0.1 * val[3] if val[2] == 'no'
      list_value.push([val[0], val[3]])
    end
    p item_cost_list, item_cost_list.inject(0) { |sum, number| sum + number[1] }.round
  end	
end
# CalculateSalesTax.sales_tax