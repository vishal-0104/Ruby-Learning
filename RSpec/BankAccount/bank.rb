class NegativeBalanceError < StandardError
  def initialize(message)
    super(message)
  end
end

class BankAccount
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit_amt(deposit)
    raise ArgumentError, "Deposit amount must be positive" if deposit <= 0

    @balance += deposit
    puts "Deposited amount #{deposit} successfully!"
    true
  end

  def withdrawal_amt(withdraw)
    raise ArgumentError, "Withdrawal amount must be positive" if withdraw <= 0

    raise NegativeBalanceError.new("Amount is greater than balance amount #{@balance}") if withdraw > @balance

    @balance -= withdraw
    puts "Withdraw amount #{withdraw} successfully!"
    true
  end

  def display_balance
    @balance
  end
end
