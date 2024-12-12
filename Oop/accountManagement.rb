class NegativeBalanceError < StandardError
  def initialize(message)
    super(message)
  end
end


class BankAccount


  def initialize(balance)
    @balance = balance
  end


  def deposit_amt(deposit)
    @balance += deposit
    puts "Deposited amonut #{deposit} successfully!"
  end


  def withdrawal_amt(withdraw)
    begin
      raise NegativeBalanceError.new("Amount is grater than balance amount #{@balance}") unless withdraw>0 && withdraw <@balance
      @balance -= withdraw
      puts "Withdraw amount #{withdraw} successfully!"
    rescue NegativeBalanceError => e
      puts e.message
    end  
  end


  def display_balance
    puts @balance
  end


end


vishal = BankAccount.new(0)


vishal.deposit_amt(1000)
vishal.display_balance
vishal.withdrawal_amt(1200)
vishal.display_balance