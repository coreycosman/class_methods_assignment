class Bank_Account


@@interest_rate = 0.04
@@accounts = []

def initialize(name)
  @name
  @balance = 0
end
def name_reader
  @name
end

def balance_reader
  @balance
end
def balance_writer(str)
  @balance = str
end

def deposit(v)
  @balance += v
  puts "your new balance is #{@balance}"
end

def withdraw(v)
  @balance -= v
  puts "your new balance is #{@balance}"
end

def self.create(name)
account = Bank_Account.new(name)
@@accounts  << account
return account
end

def self.array_sum(any_array)
    total = 0
    any_array.each do |v|
      total += v.balance_reader
    end
    return total
end

def self.total_funds
  array_sum(@@accounts)
end



def self.interest
  @@accounts.each do
    |v|
      balance = v.balance_reader
      interest_value = v.balance_reader * @@interest_rate
      interest_balance = interest_value + balance
      v.balance_writer(interest_balance)
    end
end

end
