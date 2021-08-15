class Account
  attr_reader :name, :balance
  @@account_no = 0
  def initialize(name)
    @name = name[0]
    @@account_no += 1
    @balance = name[1].to_i
  end

  def details
    puts "Account number: #{@@account_no}\nAccount holder name: #{name}\nAccount balance: #{balance}\n"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end
if ARGV.empty?
  print('Please provide an input')
else
  A1 = Account.new(ARGV[0].split(':'))
  A2 = Account.new(ARGV[1].split(':'))
  transfer_amount = ARGV[2].split(':')[1].to_i
  if transfer_amount <= A1.balance
    A1.withdraw(transfer_amount)
    A2.deposit(transfer_amount)
    puts A1.details
    puts A2.details
  else
    puts 'Provide a reasonable transfer amount'
  end
end