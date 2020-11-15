# frozen_string_literal: true

# Simple Bank Account class
class BankAccount
  attr_reader :name

  def initialize(name)
    @name = name
    @transactions = []
    add_transaction('Beginning Balance', 0)
  end

  def credit(description, amount)
    add_transaction(description, amount)
  end

  def debit(description, amount)
    add_transaction(description, -amount)
  end

  def balance
    balance = 0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    balance
  end

  def to_s
    "Name: #{name}, Balance: $#{format('%0.2f', balance)}"
  end

  def print_register
    puts "#{name}'s Bank Account"
    puts '-' * 40
    puts 'Description'.ljust(30) + 'Amount'.rjust(10)
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30).to_s +
           format('$%0.2f', transaction[:amount]).rjust(10).to_s
    end
    puts '-' * 40
    puts 'Balance'.ljust(30) + "$#{format('%0.2f', balance)}".rjust(10)
  end

  private

  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end
end

bank_account = BankAccount.new('Forrest')

bank_account.debit('Groceries', 40)
bank_account.credit('Paycheck', 100)

bank_account.print_register
