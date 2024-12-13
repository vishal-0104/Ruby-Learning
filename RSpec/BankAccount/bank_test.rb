require 'rspec'
require_relative 'bank'

RSpec.describe BankAccount do
  let(:account) { BankAccount.new(100) } # Initialize with a balance of 100


  describe "#deposit_amt" do
    it "deposits money into the account" do
      expect(account.deposit_amt(50)).to be(true)
      expect(account.balance).to eq(150)
    end


    it "raises an error when deposit amount is non-positive" do
      expect { account.deposit_amt(0) }.to raise_error(ArgumentError, "Deposit amount must be positive")
      expect { account.deposit_amt(-10) }.to raise_error(ArgumentError, "Deposit amount must be positive")
    end
  end

  describe "#withdrawal_amt" do
    it "withdraws money from the account" do
      expect(account.withdrawal_amt(50)).to be(true)
      expect(account.balance).to eq(50)
    end


    it "raises an error when withdrawal exceeds balance" do
      expect { account.withdrawal_amt(200) }.to raise_error(NegativeBalanceError, "Amount is greater than balance amount 100")
    end


    it "raises an error when withdrawal amount is non-positive" do
      expect { account.withdrawal_amt(0) }.to raise_error(ArgumentError, "Withdrawal amount must be positive")
      expect { account.withdrawal_amt(-100) }.to raise_error(ArgumentError, "Withdrawal amount must be positive")
    end
  end


  describe "#display_balance" do
    it "returns the current balance" do
      expect(account.display_balance).to eq(100)
    end
  end
end
