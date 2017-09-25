require_relative("class.rb")

account_1 = Bank_Account.create("account1")
account_2 = Bank_Account.create("account2")


account_1.deposit(100)
account_2.deposit(200)
account_1.withdraw(50)
account_2.withdraw(100)
account_1.balance_reader
account_2.balance_reader


puts Bank_Account.total_funds

puts Bank_Account.interest
puts Bank_Account.total_funds
